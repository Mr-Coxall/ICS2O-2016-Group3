-- ICS2O-2016-Group3
--SettingsScene

--Created by: Shuvaethy Neill
-- Created on: Dec-2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
-- This is the settings scene

SettingsScene = class()

-- local variables to this scene

local settingsBackButton
local offMusicButton
local onMusicButton
local offSoundEffectsButton
local onSoundEffectsButton
local resetButton
local girlButton
local boyButton


-- Use this function to perform your initial setup for this scene
function SettingsScene:init(x)
    -- setup display options
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()

    print ("Settings")
-- scene setup code here

    settingsBackButton = Button ("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-450,HEIGHT/2+320))
    offMusicButton = Button ("Dropbox:offMusicButton", vec2(WIDTH/2-350,HEIGHT/2+100))
    onMusicButton = Button ("Dropbox:onMusicButton", vec2(WIDTH/2-190, HEIGHT/2+100))
    offSoundEffectsButton = Button ("Dropbox:offSoundEffectsButton", vec2(WIDTH/2-350, HEIGHT/2-150))
    onSoundEffectsButton = Button ("Dropbox:onSoundEffectsButton", vec2(WIDTH/2-190, HEIGHT/2-150))
    resetButton = Button ("Dropbox:resetButton", vec2(WIDTH/2+250, HEIGHT/2+100))
    girlButton = Button ("Dropbox:girlButton", vec2(WIDTH/2+170, HEIGHT/2-150))
    boyButton = Button ("Dropbox:boyButton", vec2(WIDTH/2+320, HEIGHT/2-150))
    end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    
    -- do your drawing here
    sprite("Dropbox:SettingsScene", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    fill(0, 0, 0, 255)
    fontSize(100)
    font("AmericanTypewriter")
    
    -- This sets the line thickness
    strokeWidth(5)
    
    -- print text to screen
    text("SETTINGS", WIDTH/2, HEIGHT/1.11)
    
    settingsBackButton:draw()
    offMusicButton:draw()
    onMusicButton:draw()
    offSoundEffectsButton:draw()
    onSoundEffectsButton:draw()
    resetButton:draw()
    girlButton:draw()
    boyButton:draw()
    
    fill(0, 0, 0, 255)
    fontSize (35)
    text("MUSIC", WIDTH/2-270,HEIGHT/2+180)
    text("SOUND EFFECTS", WIDTH/2-270, HEIGHT/2-70)
    text("GAME", WIDTH/2+250, HEIGHT/2+180)
    text("GIRL", WIDTH/2+170, HEIGHT/2-70)
    text("BOY", WIDTH/2+320, HEIGHT/2-70)
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    settingsBackButton:touched(touch)
    offMusicButton:touched(touch)
    onMusicButton:touched(touch)
    offSoundEffectsButton:touched(touch)
    onSoundEffectsButton:touched(touch)
    resetButton:touched(touch)
    girlButton:touched(touch)
    boyButton:touched(touch)
    
    if (settingsBackButton.selected == true) then
        Scene.Change ("mainMenuScene")
        sound(SOUND_HIT, 4344)
    elseif (offMusicButton.selected == true) then
        music.stop()
    elseif (onMusicButton.selected == true) then
        music("Game Music One:Toy Land", 0.30)         
        end
end