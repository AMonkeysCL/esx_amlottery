ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local selectedNumbers = {}  -- Almacena los números seleccionados por el jugador

RegisterNetEvent('esx_amlottery:openNumberMenu')
AddEventHandler('esx_amlottery:openNumberMenu', function()
    selectedNumbers = {}  -- Limpia la lista de números seleccionados

    local elements = {}

    for i = 1, 13 do
        table.insert(elements, {
            label = tostring(i),
            value = i
        })
    end

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'number_menu',
        {
            title = 'Selecciona tus números (1-13)',
            align = 'top-left',
            elements = elements
        },
        function(data, menu)
            local selectedNumber = data.current.value

            if not IsNumberSelected(selectedNumber) then
                table.insert(selectedNumbers, selectedNumber)
            else
                table.remove(selectedNumbers, IndexOfNumber(selectedNumber))
            end

            menu.updateContext("title", "Seleccionados: " .. table.concat(selectedNumbers, ", "))

            ESX.ShowNotification("Número " .. selectedNumber .. (IsNumberSelected(selectedNumber) and " seleccionado" or " deseleccionado"))
        end,
        function(data, menu)
            menu.close()
        end
    )
end)

function IsNumberSelected(number)
    return IndexOfNumber(number) ~= nil
end

function IndexOfNumber(number)
    for i, num in ipairs(selectedNumbers) do
        if num == number then
            return i
        end
    end
    return nil
end
