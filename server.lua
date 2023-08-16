RegisterServerEvent('esx_amlottery:selectNumbers')
AddEventHandler('esx_amlottery:selectNumbers', function(selectedNumber)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Aquí podrías agregar lógica para registrar los números seleccionados por el jugador
    -- Puedes usar la variable selectedNumber para guardar el número elegido

    TriggerClientEvent('esx:showNotification', source, 'Has seleccionado el número: ' .. selectedNumber)
end)
