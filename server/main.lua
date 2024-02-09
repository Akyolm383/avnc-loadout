
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("avncsv:kusan")
AddEventHandler("avncsv:kusan", function(items)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    for _, itemData in ipairs(items.items) do
        Player.Functions.AddItem(itemData.name, itemData.amount)
    end

    TriggerClientEvent('QBCore:Notify', src, GetLocaleString('notify_success'), 'success', 5000)
end)
