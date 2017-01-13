-- ICS2O-2016-Group3
--LevelsScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the scene with all the levels

LevelsScene = class()

-- local variables in this scene

-- Use this function to perform your initial setup for this scene
function LevelsScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    levelsBackButton = Button("Dropbox:Red Back Circle Button", vec2(WIDTH/2-450,HEIGHT/2+320))
end 

    -- scene setup code here
sprite("Dropbox:Red Back Circle Button")

function LevelsScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    
    -- do your drawing here
    sprite("Dropbox:LevelsScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    levelsBackButton:draw()
    
end

function LevelsScene:touched(touch)
    -- Codea does not automatically call this method
    levelsBackButton:touched(touch)
        
     if (levelsBackButton.selected == true) then
        Scene.Change ("mainMenuScene")
        end
    
end
