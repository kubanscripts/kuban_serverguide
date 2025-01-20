Config = {}

-- ██████╗ ███████╗██████╗ 
-- ██╔══██╗██╔════╝██╔══██╗
-- ██████╔╝█████╗  ██║  ██║
-- ██╔═══╝ ██╔══╝  ██║  ██║
-- ██║     ███████╗██████╔╝
-- ╚═╝     ╚══════╝╚═════╝       

Config.Ped = {
    model = 'g_m_m_casrn_01', -- Ped model
    coords = vector4(-1439.92, -552.94, 34.74, 37.33), -- Ped coordinates
    scenario = 'WORLD_HUMAN_CLIPBOARD' -- Ped animation
}

-- ████████╗ █████╗ ██████╗  ██████╗ ███████╗████████╗
-- ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ ██╔════╝╚══██╔══╝
--    ██║   ███████║██████╔╝██║  ███╗█████╗     ██║   
--    ██║   ██╔══██║██╔══██╗██║   ██║██╔══╝     ██║   
--    ██║   ██║  ██║██║  ██║╚██████╔╝███████╗   ██║   
--    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   
                                                   
Config.Target = {
    label = 'City Guide', -- Target Label
    icon = 'fa-solid fa-map' -- Target Icon
}

-- ██████╗ ██╗   ██╗██╗██████╗ ███████╗
-- ██╔════╝ ██║   ██║██║██╔══██╗██╔════╝
-- ██║  ███╗██║   ██║██║██║  ██║█████╗  
-- ██║   ██║██║   ██║██║██║  ██║██╔══╝  
-- ╚██████╔╝╚██████╔╝██║██████╔╝███████╗
--  ╚═════╝  ╚═════╝ ╚═╝╚═════╝ ╚══════╝
                                     
Config.Jobs = {
    {
        title = 'KubanScripts',
        description = 'Find our amazing scripts @ https://discord.gg/UzVbtKEzgN ',
        icon = 'fa-solid fa-city', -- Icon on the Context Menu
        gps = vector3(239.83, -1071.9, 29.29) -- Location that the gps goes to
    },
    -- {
    --     title = 'Title Here',
    --     description = 'Change Me!',
    --     icon = 'fa-solid fa-city', -- https://fontawesome.com/search?ip=classic&s=solid&o=r
    --     gps = vector3(239.83, -1071.9, 29.29) -- Location that the gps goes to
    -- },
}

Config.AmazingScripts = true -- Leave this on if you think our scripts are amazing!
Config.VersionChecker = true 

