-- ICS2O-2016-Group3
--MainMenuScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the scene that shows up after the game logo, main menu

MainMenuScene = class()



-- local variables to this scene
local startButton

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- scene setup code here
    
    startButton = Button ("Project:startButton", vec2(WIDTH/2,HEIGHT/2))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(31, 22, 201, 255)
    
    -- do your drawing here
    sprite("Documents:MainMenuScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    --sprite("Project:startButton", vec2(20,20))
    startButton:draw()
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
end
