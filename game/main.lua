function love.draw(screen)
    local Palette = {
        {5/255, 31/255, 57/255, 1},
        {74/255, 36/255, 128/255, 1},
        {197/255, 58/255, 157/255, 1},
        {255/255, 142/255, 128/255, 1}
    }
    love.graphics.setBackgroundColor(Palette[2]) -- color de fondo
    local touches = love.touch.getTouches()
    for i, id in ipairs(touches) do
        local x, y = love.touch.getPosition(id)
        if screen == "bottom" then
            love.graphics.circle("fill", x, y, 10) -- render bottom screen
        end
    end
    love.graphics.print('Hello World!', 200, 120)
end

-- we need to quit the app when a button is pressed
function love.gamepadpressed(joystick, button)
    love.event.quit()
end