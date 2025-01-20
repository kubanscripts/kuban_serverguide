---@type string The resource name
local ResourceName = 'kuban_serverguide'

local Config = Config or {} 
local pedHandle

local function loadModel(model)
    if not HasModelLoaded(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(0)
        end
    end
end

local function createPed()
    if not Config.Ped or not Config.Ped.model or not Config.Ped.coords then
        print('ERROR: Config.Ped is not properly defined in config.lua.')
        return
    end

    loadModel(Config.Ped.model)

    local coords = Config.Ped.coords
    pedHandle = CreatePed(4, Config.Ped.model, coords.x, coords.y, coords.z - 1.0, coords.w, false, false)

    if pedHandle then
        TaskStartScenarioInPlace(pedHandle, Config.Ped.scenario, 0, true)
        SetEntityInvincible(pedHandle, true)
        SetBlockingOfNonTemporaryEvents(pedHandle, true)
        FreezeEntityPosition(pedHandle, true)

        print('Ped created successfully:', pedHandle)
    else
        print('Failed to create ped. Check coordinates or model.')
    end
end


local function showAlertAndSetGPS(job)
    lib.alertDialog({
        header = job.title,
        content = job.description,
        centered = true,
        type = 'inform'
    })
    SetNewWaypoint(job.gps.x, job.gps.y)
    lib.notify({
        title = job.title,
        description = 'GPS has been set to the location.',
        type = 'success'
    })
end

local function registerTarget()
    exports.ox_target:addLocalEntity(pedHandle, {
        {
            name = ResourceName .. ':cityGuide',
            label = Config.Target.label,
            icon = Config.Target.icon,
            onSelect = function()
                local options = {}
                for i, job in ipairs(Config.Jobs) do
                    options[#options + 1] = {
                        title = job.title,
                        description = job.description,
                        icon = job.icon,
                        event = ResourceName .. ':selectJob',
                        args = job
                    }
                end

                lib.registerContext({
                    id = ResourceName .. ':mainMenu',
                    title = Config.Target.label,
                    options = options
                })
                lib.showContext(ResourceName .. ':mainMenu')
            end
        }
    })
end

RegisterNetEvent(ResourceName .. ':selectJob', function(job)
    showAlertAndSetGPS(job)
end)

CreateThread(function()
    createPed()
    registerTarget()
end)
