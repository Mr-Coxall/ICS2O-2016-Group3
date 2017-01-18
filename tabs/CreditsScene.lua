-- ICS2O-2016-Group3
-- CreditsScene

-- Created by: Mr.Coxall
-- Created on: Dec. 22, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the second scene to show up, the game logo.

CreditsScene = class()

-- Variables local to entire file
local backToHomeButton

-- Use this function to perform your initial setup for this scene
function CreditsScene:init()
    -- set up display options
    supportedOrientations()
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()    
    
    --sprite("Dropbox:Purple Back Circle Button")
   
    backToHomeButton = Button("Dropbox:Purple Back Circle Button", vec2 (WIDTH/14, HEIGHT/1.1))
    
end

function CreditsScene:draw()
    -- Codea does not automatically call this method
    
    -- This function gets called once every frame
    background(0, 0, 0, 255)

    fill(255, 255, 255, 255)
    fontSize(50)
    font("Courier")

    -- This sets the line thickness
    strokeWidth(5)

    -- Print text on screen here
        text ("Credits", WIDTH/2, HEIGHT/1.11)
        text ("Created by:", WIDTH/2, HEIGHT/1.22)
        text ("The Grade 3 Students", WIDTH/2, HEIGHT/1.37)
        text ("Emma", WIDTH/2, HEIGHT/1.53)
        text ("Marina", WIDTH/2, HEIGHT/1.69)
        text ("Christopher", WIDTH/2, HEIGHT/1.89)
        text ("The Mother Teresa Students", WIDTH/2, HEIGHT/2.3)
        text ("Sidney", WIDTH/2, HEIGHT/3)
        text ("Marianna", WIDTH/2, HEIGHT/3.7)
        text ("Shuvaethy", WIDTH/2, HEIGHT/4.8)
    backToHomeButton:draw()
end

function CreditsScene:touched(touch)
    -- Codea does not automatically call this method
   
    -- This sets a dark background color
    backToHomeButton:touched(touch)
    
    if (backToHomeButton.selected == true) then
        Scene.Change ("mainMenuScene")
    end
    
end