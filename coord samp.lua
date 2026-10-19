local font_flag = require('moonloader').font_flag
local my_font = renderCreateFont('Arial', 12, font_flag.BOLD + font_flag.SHADOW)

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then return end
    while not isSampAvailable() do wait(100) end 


    while true do
        X, Y, Z = getCharCoordinates(PLAYER_PED)
        renderFontDrawText(my_font, '{ED8C23}X: {FFFFFF}' .. math.floor(X) .. '\n{ED8C23}Y: {FFFFFF}' .. math.floor(Y) .. '\n{ED8C23}Z: {FFFFFF}' .. math.floor(Z), 10, 400, 0xFFFFFFFF)
        wait(0)
    end
end