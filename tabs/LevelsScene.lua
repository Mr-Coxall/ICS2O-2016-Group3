-- ICS2O-2016-Group3
--LevelsScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the scene with all the levels

LevelsScene = class()

-- local variables in this scene
local levelsBackButton 
local levelsSettingsButton
local levelOneButton
local levelTwoButton
local levelThreeButton
local levelFourButton
local levelFiveButton

-- Use this function to perform your initial setup for this scene
function LevelsScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    print ("Levels")

    -- scene setup code here

    levelsBackButton = Button ("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-450,HEIGHT/2+320))
    levelsSettingsButton = Button ("Dropbox:Blue Settings Button", vec2(WIDTH/2+450, HEIGHT/2+320))
    levelOneButton = Button ("Dropbox:levelOneButton", vec2(WIDTH/2-250,HEIGHT/2+60))
    levelTwoButton = Button ("Dropbox:levelTwoButton", vec2(WIDTH/2, HEIGHT/2+60))
    levelThreeButton = Button ("Dropbox:levelThreeButton", vec2(WIDTH/2+250, HEIGHT/2+60))
    levelFourButton = Button ("Dropbox:levelFourButton", vec2(WIDTH/2-125, HEIGHT/2-150))
    levelFiveButton = Button ("Dropbox:levelFiveButton", vec2(WIDTH/2+125, HEIGHT/2-150))
    
end

function LevelsScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    
    -- do your drawing here
    sprite("Dropbox:LevelsScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    --sets the drawing parameters
    fill(0, 0, 0, 255)
    fontSize(100)
    font("AmericanTypewriter")
    
    -- print text to screen
    text("LEVELS", WIDTH/2, HEIGHT/1.11)
    
    
    -- This sets the line thickness
    strokeWidth(5)
    
    levelsBackButton:draw()   
    levelsSettingsButton:draw()
    levelOneButton:draw()
    levelTwoButton:draw()
    levelThreeButton:draw()
    levelFourButton:draw()
    levelFiveButton:draw()
    
    fontSize (26)
    text("LEVEL 1", WIDTH/2-250,HEIGHT/2+30)
    text("LEVEL 2", WIDTH/2, HEIGHT/2+30)
    text("LEVEL 3", WIDTH/2+250, HEIGHT/2+30)
    text("LEVEL 4", WIDTH/2-125, HEIGHT/2-180)
    text("LEVEL 5", WIDTH/2+125, HEIGHT/2-180)
    
end

function LevelsScene:touched(touch)
    -- Codea does not automatically call this method
    levelsBackButton:touched(touch)
    levelsSettingsButton:touched(touch)
    levelOneButton:touched(touch)
    levelTwoButton:touched(touch)
    levelThreeButton:touched(touch)
    levelFourButton:touched(touch)
    levelFiveButton:touched(touch)
        
     if (levelsBackButton.selected == true) then
        Scene.Change ("mainMenuScene")
        sound(SOUND_HIT, 4344)
     elseif (levelsSettingsButton.selected == true) then
        Scene.Change ("settingsScene")
        sound(SOUND_HIT, 4344)
    end
    
    if (levelOneButton.selected == true) then
        Scene.Change ("mainGameScene")
    end
end