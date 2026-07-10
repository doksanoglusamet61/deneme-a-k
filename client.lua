-- Basit bir MTA:SA client-side Lua örneği

addEventHandler("onClientResourceStart", resourceRoot, function()
    outputChatBox("MTA Lua script çalıştı!", 255, 255, 0, true)
end)

bindKey("F1", "down", function()
    outputChatBox("F1 tuşuna basıldı!", 0, 255, 0, true)
end)

addEventHandler("onClientRender", root, function()
    local screenW, screenH = guiGetScreenSize()
    dxDrawText("MTA Lua örneği", 20, 20, screenW, screenH, tocolor(255, 255, 255, 255), 1.2, "default-bold")
end)
