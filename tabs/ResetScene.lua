-- ICS2O-2016-Group3
--SettingsScene

--Created by: Shuvaethy Neill
-- Created on: Jan-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the reset scene

ResetScene = class()

-- local variables to this scene

local yesButton
local noButton

-- Use this function to perform your initial setup for this scene
function ResetScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()

-- scene setup code here

    yesButton = Button ("Dropbox:yesButton", vec2(WIDTH/2-210,HEIGHT/2-55))
    noButton = Button ("Dropbox:noButton", vec2(WIDTH/2+110, HEIGHT/2-65))
end

function ResetScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    
    -- do your drawing here
    sprite("Dropbox:resetScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    sprite("Dropbox:resetQuestion", WIDTH/2, HEIGHT/2)
    
    yesButton:draw()
    noButton:draw()
    
end

function ResetScene:touched(touch)
    -- Codea does not automatically call this method
    yesButton:touched(touch)
    noButton:touched(touch)
    
    if (noButton.selected == true) then
        Scene.Change ("settingsScene")
    end
    
    if (yesButton.selected == true) then
        cashier = girlCashier
        Scene.Change ("mainMenuScene")
        musicPlaying = false
        soundEffectsOn = true
    end
end
