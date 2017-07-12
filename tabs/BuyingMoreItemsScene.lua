-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
BuyingMoreItemsScene = class()

function BuyingMoreItemsScene:init(x)
    -- you can accept and set parameters here
    supportedOrientations(LANDSCAPE_ANY)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    speech.stop()

    yesBox = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+20, HEIGHT/2+100))
    noBox = Button("Cargo Bot:Condition Red", vec2(WIDTH/2-50, HEIGHT/2+100))

    sceneDialog = ShowDialog("Would you like to buy any more items?",vec2(WIDTH/2-5, HEIGHT/2+150),350,200)
    sceneDialog:setFont("Courier", 25)
    sceneDialog:show()   
end

function BuyingMoreItemsScene:draw()
    -- Codea does not automatically call this method
    background(40, 40, 50)
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,WIDTH,HEIGHT)
    
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Courier")  
    pushStyle()
    
    text ("Level " .. currentLevel, WIDTH/2+390, HEIGHT/2+350)
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT/2-340)
     
    sprite("Dropbox:shelf", WIDTH/2+220, HEIGHT/2)
    sprite("Cargo Bot:Condition Green", WIDTH/2+20, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+155, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+289, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+424, HEIGHT/2-20) 
    
    fontSize(15)
    text (string.format("$%.2f", firstThingTheyAreBuyingCost), WIDTH/2+20, HEIGHT/2-20)
    text (string.format("$%.2f", secondThingTheyAreBuyingCost), WIDTH/2+155, HEIGHT/2-20)
    text (string.format("$%.2f", thirdThingTheyAreBuyingCost), WIDTH/2+289, HEIGHT/2-20)
    text (string.format("$%.2f", fourthThingTheyAreBuyingCost), WIDTH/2+424, HEIGHT/2-20)  
       
     theCashier:draw()
     desk:draw()
     basket:draw()
     firstThingTheyAreBuying:draw()
     secondThingTheyAreBuying:draw()
     thirdThingTheyAreBuying:draw()
     fourthThingTheyAreBuying:draw()
     --settingsButton:draw()
     --levelsButton:draw()
       
     sceneDialog:draw()
     yesBox:draw()
     noBox:draw()
    
    fontSize(20)
    text ("NO", WIDTH/2-50, HEIGHT/2+100)
    text ("YES", WIDTH/2+20, HEIGHT/2+100)
    popStyle()    
end 

function BuyingMoreItemsScene:touched(touch)
    -- Codea does not automatically call this method 
    sceneDialog:touched(touch)
     --levelsButton:touched(touch)
     yesBox:touched(touch)
     noBox:touched(touch)
    
    if (yesBox.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        wrongCounter = 0
        Scene.Change ("buyingScene")
    elseif (noBox.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        wrongCounter = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        --pointsInLevel = 0
        Scene.Change ("levelScene")
    end
    --[[
    if (settingsButton.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        pointsInLevel = 0
        Scene.Change ("settingsScene")
    end
    if (levelsButton.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        pointsInLevel = 0
        Scene.Change ("levelScene")
    end
    --]]
end