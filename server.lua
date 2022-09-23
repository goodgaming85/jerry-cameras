local QBCore = exports['qb-core']:GetCoreObject()

local webHook = Config.Webhooks[name]

    --Qbcore Usable items
QBCore.Functions.CreateUseableItem("camera1", function(source, item)
    local src = source
    TriggerClientEvent("jerry-cameras:picture1", src)
end)

QBCore.Functions.CreateUseableItem("camera2", function(source, item)
    local src = source
    TriggerClientEvent("jerry-cameras:picture2", src)
end)

QBCore.Functions.CreateUseableItem("camera3", function(source, item)
    local src = source
    TriggerClientEvent("jerry-cameras:picture3", src)
end)

    --Webhook Callbacks

QBCore.Functions.CreateCallback("jerry-cameras:webookpd",function(source,cb)
	cb(Config.Webhooks["1"])
end)

QBCore.Functions.CreateCallback("jerry-cameras:webookcid",function(source,cb)
	cb(Config.Webhooks["2"])
end)

QBCore.Functions.CreateCallback("jerry-cameras:webookpi",function(source,cb)
	cb(Config.Webhooks["3"])
end)