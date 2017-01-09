-- ICS2O-2016-Group3
--LevelsScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the scene with all the levels

LevelsScene = class()

-- Use this function to perform your initial setup for this scene
function LevelsScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
end 



function LevelsScene:draw()
    -- Codea does not automatically call this method
    background(31, 22, 201, 255)
end

function LevelsScene:touched(touch)
    -- Codea does not automatically call this method
end
