-- MTA:SA client-side örnek script

local showHud = true

local function drawHud()
    if not showHud then
        return
    end

    local screenW, screenH = guiGetScreenSize()
    dxDrawText("MTA Lua örneği", 20, 20, screenW, screenH, tocolor(255, 255, 255, 255), 1.4, "default-bold")
    dxDrawText("F1: mesaj göster | F2: HUD aç/kapat", 20, 50, screenW, screenH, tocolor(200, 200, 200, 255), 1.0, "default")
end

addEventHandler("onClientResourceStart", resourceRoot, function()
    outputChatBox("MTA Lua script çalıştı!", 255, 255, 0, true)
end)

bindKey("F1", "down", function()
    outputChatBox("F1 tuşuna basıldı!", 0, 255, 0, true)
end)

bindKey("F2", "down", function()
    showHud = not showHud
    outputChatBox(showHud and "HUD açıldı" or "HUD kapatıldı", 255, 255, 255, true)
end)

addEventHandler("onClientRender", root, drawHud)
