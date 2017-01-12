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
local settingsButton
local achievementsButton
local creditsButton

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
    settingsButton = Button ("Documents:settingsButton", vec2(WIDTH/2, HEIGHT/3))
    achievementsButton = Button ("Documents:achievementsButton", vec2(WIDTH/2, HEIGHT/5))
    creditsButton = Button ("Documents:creditsButton", vec2(WIDTH/1.1, HEIGHT/11))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(31, 22, 201, 255)
    
    -- do your drawing here
    sprite("Project:MainMenuScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    startButton:draw()
    settingsButton:draw()
    achievementsButton:draw()
    creditsButton:draw()
end

function MainMenuScene:touched(touch)
    startButton:touched(touch)
    settingsButton:touched(touch)
    achievementsButton:touched(touch)
    creditsButton:touched(touch)
    
    if (startButton.selected == true) then
        Scene.Change ("levelScene")
    end
     
    if (settingsButton.selected == true) then
        Scene.Change ("settingsScene")
    end
end
    
    
    -- Codea does not automatically call this method
