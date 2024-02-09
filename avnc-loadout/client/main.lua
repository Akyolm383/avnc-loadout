local QBCore = exports['qb-core']:GetCoreObject()
local timeoutt = false
RegisterCommand('hayatimikarart', function()
    DoScreenFadeOut(500)
    Wait(5000) -- DoScreenFadeOut için belirlediğiniz süreye göre ayarlayın
    DoScreenFadeIn(500)
end)


RegisterNetEvent("avnccl:progressbar")
AddEventHandler("avnccl:progressbar", function(items)
QBCore.Functions.Progressbar('Kusan', GetLocaleString('progbar_text'), Config.progressbartime, false, true, {
  disableMovement = true,
  disableCarMovement = true,
  disableMouse = false,
  disableCombat = true
  }, {
    animDict = "random@mugging4",
    anim = "struggle_loop_b_thief",
    flags = 49,
  }, {}, {}, function()
     TriggerServerEvent("avncsv:kusan", items)

  end, function()
    QBCore.Functions.Notify(GetLocaleString('notify_error'), "error", 5000)
end)
end)

RegisterNetEvent('avnc:client:aracievent')
AddEventHandler('avnc:client:aracievent', function(items)
    if Config.Timeout.timeout then
        if not isTimeoutActive then
            isTimeoutActive = true
            DoScreenFadeOut(500)
            Citizen.Wait(500)
            TriggerEvent("avnccl:progressbar", items)
            Citizen.Wait(Config.progressbartime)
            DoScreenFadeIn(500)
            SetTimeout(Config.Timeout.timeouttime*60000, function()
                isTimeoutActive = false
            end)
        else
            QBCore.Functions.Notify(GetLocaleString('timeout_error').." "..Config.Timeout.timeouttime, "error", 5000)
        end
    else
        TriggerServerEvent("avncsv:kusan", items)
    end
end)



RegisterNetEvent('avnc:client:menuac', function()
  local Player = QBCore.Functions.GetPlayerData()
  local opitipiti = {}

  if Config.Menu == "qb-menu" then
      opitipiti[#opitipiti + 1] = { 
          isMenuHeader = true,
          header = GetLocaleString('qb_menu_header'),
          icon = Config.Menuicon
      }
  else
      local menuOptions = {}

          for _, itemName in ipairs(Config.queue) do
              local v = Config.items[itemName]
              local hasAccess = false
              for _, gradeLevel in ipairs(v.accessgrade) do
                  if Player.job.grade.level == gradeLevel then
                      hasAccess = true
                      break
                  end
              end
              if hasAccess then
                  table.insert(menuOptions, {
                      title = v.name,
                      description = v.txt,
                      icon = v.icon,
                      iconAnimation = v.iconanimation,
                      event = 'avnc:client:aracievent',
                      arrow = true,
                      args = {
                          items = v.items,
                          progressbar = v.progressbartime,
                      }
                  })
              end
          end
      
      lib.registerContext({
          id = 'some_menu',
          title = GetLocaleString('ox_menu_header'),
          options = {
              table.unpack(menuOptions)
          }
      })
  end

      for _, itemName in ipairs(Config.queue) do
          local v = Config.items[itemName]
          local hasAccess = false
          for _, gradeLevel in ipairs(v.accessgrade) do
              if Player.job.grade.level == gradeLevel then
                  hasAccess = true
                  break
              end
          end
          if Config.Menu == "qb-menu" then
              if hasAccess then
                  opitipiti[#opitipiti + 1] = {
                      header = v.name,
                      txt = v.txt,
                      icon = v.icon,
                      params = {
                          event = 'avnc:client:aracievent',
                          args = {
                              items = v.items,
                              progressbar = v.progressbartime,
                          }
                      }
                  }
              end
            end
      end
    
      -- if Config.Menu == "ox_lib" then
      --     lib.registerContext(opitipiti)
      if Config.Menu == "qb-menu" then
          exports['qb-menu']:openMenu(opitipiti)
          print("menucalisioamk")
      else
          lib.showContext("some_menu")
      end
    end)




    for _, location in ipairs(Config.loadoutcoords) do
        exports['qb-target']:AddCircleZone(location.name, location.coords, 1.5, {
            name = location.name,
            debugPoly = false,
        }, {
            options = {
                {
                    type = "client",
                    event = "avnc:client:menuac",
                    label = GetLocaleString('target_label'),
                    icon = 'briefcase',
                    jobType = 'leo',
                }
            },
            distance = 2.5,
        })
    end
