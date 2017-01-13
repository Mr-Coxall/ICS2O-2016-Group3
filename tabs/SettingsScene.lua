-- ICS2O-2016-Group3
--SettingsScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the settings scene

SettingsScene = class()

-- global variables to this scene

-- Use this function to perform your initial setup for this scene
function SettingsScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    
    -- do your drawing here
    sprite("Dropbox:SettingsScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
end
