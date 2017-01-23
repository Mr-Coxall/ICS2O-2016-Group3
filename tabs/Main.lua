-- ICS2O-2016-Group3
-- Main

-- Created by: Mr. Coxall
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the initialization Main code to get the game started

-- this turns on Game Center simulation from the Helper Class
-- this is so you can call Game Center code within Codea 
-- and just set this boolean to "false" before you export to Xcode
DEBUG_GAMECENTER = true

-- Global variables to the entire project
currentLevel = 0
musicPlaying = false
gender = sprite("Dropbox:girl")
--currentLevel = 

-- local variables to this scene


-- Use this function to perform your initial setup
function setup()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()    
    
     -- create the scenes
      Scene("companyLogoScene", CompanyLogoScene)
      Scene("gameLogoScene", GameLogoScene)
      Scene("mainMenuScene", MainMenuScene)
      Scene("settingsScene", SettingsScene)
      --Scene("achievementsScene", AchievementsScene)
      Scene ("levelScene", LevelsScene)
      Scene("creditsScene", CreditsScene)
      Scene("mainGameScene", MainGameScene)
      Scene("completeBuyingProcessScene", CompleteBuyingProcessScene)
      Scene("buyingMoreItemsScene", BuyingMoreItemsScene)
      Scene("lastClueScene", LastClueScene)
      Scene("buyingScene", BuyingScene)
      Scene("payingScene", PayingScene)
    		      
      Scene.Change("companyLogoScene")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 0, 0, 255)

    -- Do your drawing here
    Scene.Draw() 
end

-- This function gets called once every frame
function touched(touch)
    -- Do your touching code here
    Scene.Touched(touch) 
end 
