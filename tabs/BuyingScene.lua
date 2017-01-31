-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
BuyingScene = class()

firstThingHasTouched = false
secondThingHasTouched = false
thirdThingHasTouched = false
fourthThingHasTouched = false
currentItemSelected = ""

function BuyingScene:init()
    -- you can accept and set parameters here
    
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    yesBox = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+20, HEIGHT/2+100))
    noBox = Button("Cargo Bot:Condition Red", vec2(WIDTH/2-50, HEIGHT/2+100))
    nextButton1 = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2+435, HEIGHT/2-300))
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2-435, HEIGHT/2-300))

    firstThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+1]["item"], vec2(WIDTH/2+20, HEIGHT/2+120))
    firstThingTheyAreBuying.draggable = true
    secondThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+2]["item"], vec2(WIDTH/2+135, HEIGHT/2+120))
    secondThingTheyAreBuying.draggable = true
    thirdThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+3]["item"], vec2(WIDTH/2+270, HEIGHT/2+120))
    thirdThingTheyAreBuying.draggable = true
    fourthThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+4]["item"], vec2(WIDTH/2+424, HEIGHT/2+120))
    fourthThingTheyAreBuying.draggable = true
    
    firstThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+1]["cost"])
    secondThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+2]["cost"])
    thirdThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+3]["cost"])
    fourthThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+4]["cost"]) 
    
    firstThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+1]["name"])
    secondThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+2]["name"])
    thirdThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+3]["name"])
    fourthThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+4]["name"])
    
    cashierDialog = ShowDialog("Select only 1 item.", vec2(WIDTH/2-80, HEIGHT/2+150), 180,190)
    cashierDialog:setFont("Courier", 25)
    cashierDialog:show()     
    
    speech.say("Please select only 1 item.")
end
function BuyingScene:draw()
    -- Codea does not automatically call this method
    background(40, 40, 50)
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,WIDTH,HEIGHT)

    fill(0, 0, 0, 255)
    fontSize(50)
    font("Courier")  
    pushStyle()
    
    text ("Level " .. currentLevel , WIDTH/2+390, HEIGHT/2+350)
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT/2-340)
    text("NEXT", WIDTH/2+435, HEIGHT/6-111)
    text("BACK", WIDTH/2-435,HEIGHT/6-111)
    
    sprite("Dropbox:shelf", WIDTH/2+220, HEIGHT/2)
    sprite("Cargo Bot:Condition Green", WIDTH/2+20, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+155, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+289, HEIGHT/2-20)
    sprite("Cargo Bot:Condition Green", WIDTH/2+424, HEIGHT/2-20) 
    
    fontSize(15)
    text ("$" .. firstThingTheyAreBuyingCost, WIDTH/2+20, HEIGHT/2-20)
    text ("$" .. secondThingTheyAreBuyingCost, WIDTH/2+155, HEIGHT/2-20)
    text ("$" .. thirdThingTheyAreBuyingCost, WIDTH/2+289, HEIGHT/2-20)
    text ("$" .. fourthThingTheyAreBuyingCost, WIDTH/2+424, HEIGHT/2-20)  
    
    popStyle()
    
     cashier:draw()
     desk:draw()
     basket:draw()
     firstThingTheyAreBuying:draw()
     secondThingTheyAreBuying:draw()
     thirdThingTheyAreBuying:draw()
     fourthThingTheyAreBuying:draw()
     settingsButton:draw()
     
     backButton:draw()
     levelsButton:draw()
     nextButton1:draw()
     cashierDialog:draw()
    
    if (nextButton1.selected == true) then
        if (currentItemSelected == firstThingTheyAreBuying) then
            noBox:draw()
            yesBox:draw()
            fontSize(20)
            text ("NO", WIDTH/2-50, HEIGHT/2+100)
            text ("YES", WIDTH/2+20, HEIGHT/2+100)   
            popStyle() 
         elseif (currentItemSelected == secondThingTheyAreBuying) then     
            noBox:draw()
            yesBox:draw()
            fontSize(20)
            text ("NO", WIDTH/2-50, HEIGHT/2+100)
            text ("YES", WIDTH/2+20, HEIGHT/2+100)   
            popStyle() 
         elseif (currentItemSelected == thirdThingTheyAreBuying) then     
            noBox:draw()
            yesBox:draw()
            fontSize(20)
            text ("NO", WIDTH/2-50, HEIGHT/2+100)
            text ("YES", WIDTH/2+20, HEIGHT/2+100)   
            popStyle()
        elseif (currentItemSelected == fourthThingTheyAreBuying) then     
            noBox:draw()
            yesBox:draw()
            fontSize(20)
            text ("NO", WIDTH/2-50, HEIGHT/2+100)
            text ("YES", WIDTH/2+20, HEIGHT/2+100)   
            popStyle()
        end
    end
     if (nextButton1.selected == true) then
         if (currentItemSelected == "") then
               cashierDialog = ShowDialog("Select 1 item.",vec2(WIDTH/2-80, HEIGHT/2+150), 180,190)
               cashierDialog:setFont("Courier", 25)
               cashierDialog:show()
               end
    end
end 
function BuyingScene:touched(touch)
    -- Codea does not automatically call this method   
    if (firstThingTheyAreBuying:isTouching(basket) == true) then
        cashierDialog = ShowDialog("That will cost $" .. firstThingTheyAreBuyingCost .. ". Press the next button to pay for the item.", vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
        speech.say("That will cost $" .. firstThingTheyAreBuyingCost .. ". Press the next button to pay for the item.")
        firstThingHasTouched = true
        currentItemSelected = firstThingTheyAreBuying
        currentItemSelectedName = firstThingTheyAreBuyingName
        currentItemSelectedCost = firstThingTheyAreBuyingCost
        secondThingTheyAreBuying.draggable = false
        thirdThingTheyAreBuying.draggable = false
        fourthThingTheyAreBuying.draggable = false
     elseif (secondThingTheyAreBuying:isTouching(basket) == true) then
             cashierDialog = ShowDialog("That will cost $" .. secondThingTheyAreBuyingCost .. ". Press the next button to pay for the item.",vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
        speech.say("That will cost $" .. secondThingTheyAreBuyingCost .. ". Press the next button to pay for the item.")
        secondThingHasTouched = true
        currentItemSelected = secondThingTheyAreBuying
        currentItemSelectedName = secondThingTheyAreBuyingName
        currentItemSelectedCost = secondThingTheyAreBuyingCost
        firstThingTheyAreBuying.draggable = false
        thirdThingTheyAreBuying.draggable = false
        fourthThingTheyAreBuying.draggable = false
     elseif (thirdThingTheyAreBuying:isTouching(basket) == true) then  
        cashierDialog = ShowDialog("That will cost $" .. thirdThingTheyAreBuyingCost .. ". Press the next button to pay for the item.",vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show() 
        thirdThingHasTouched = true
        currentItemSelected = thirdThingTheyAreBuying
        currentItemSelectedName = thirdThingTheyAreBuyingName
        currentItemSelectedCost = thirdThingTheyAreBuyingCost 
        secondThingTheyAreBuying.draggable = false
        firstThingTheyAreBuying.draggable = false
        fourthThingTheyAreBuying.draggable = false
     elseif (fourthThingTheyAreBuying:isTouching(basket) == true) then
        cashierDialog= ShowDialog("That will cost $" .. fourthThingTheyAreBuyingCost .. ". Press the next button to pay for the item.",vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
        fourthThingHasTouched = true
        currentItemSelected = fourthThingTheyAreBuying
        currentItemSelectedName = fourthThingTheyAreBuyingName
        currentItemSelectedCost = fourthThingTheyAreBuyingCost
        secondThingTheyAreBuying.draggable = false
        thirdThingTheyAreBuying.draggable = false
        firstThingTheyAreBuying.draggable = false
        end
    
    if (firstThingHasTouched == false and touch.state ~= MOVING) then
        firstThingTheyAreBuying.objectCurrentLocation =    firstThingTheyAreBuying.objectStartLocation 
    elseif (firstThingHasTouched == true) then
        firstThingTheyAreBuying.objectCurrentLocation = basket.objectStartLocation 
        end
    if (secondThingHasTouched == false and touch.state ~= MOVING) then
        secondThingTheyAreBuying.objectCurrentLocation = secondThingTheyAreBuying.objectStartLocation
    elseif (secondThingHasTouched == true) then
        secondThingTheyAreBuying.objectCurrentLocation = basket.objectStartLocation 
        end
    if (thirdThingHasTouched == false and touch.state ~= MOVING) then
        thirdThingTheyAreBuying.objectCurrentLocation = thirdThingTheyAreBuying.objectStartLocation
    elseif (thirdThingHasTouched == true) then
        thirdThingTheyAreBuying.objectCurrentLocation = basket.objectStartLocation 
        end
    if (fourthThingHasTouched == false and touch.state ~= MOVING) then
        fourthThingTheyAreBuying.objectCurrentLocation = fourthThingTheyAreBuying.objectStartLocation
    elseif (fourthThingHasTouched == true) then
        fourthThingTheyAreBuying.objectCurrentLocation = basket.objectStartLocation 
        end
     
    firstThingTheyAreBuying:touched(touch)
    secondThingTheyAreBuying:touched(touch)
    thirdThingTheyAreBuying:touched(touch)
    fourthThingTheyAreBuying:touched(touch)
    settingsButton:touched(touch)
    
    levelsButton:touched(touch)
    nextButton1:touched(touch)  
    backButton:touched(touch)
    cashierDialog:touched(touch)
    noBox:touched(touch)
    yesBox:touched(touch)
    
    if (nextButton1.selected == true) then
        sound(SOUND_HIT, 4344)
        cashierDialog:hide()
        cashierDialog = ShowDialog("Are you sure you want to buy the " .. currentItemSelectedName .. ".", vec2(WIDTH/2-5, HEIGHT/2+150), 350,200)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        end
    if (yesBox.selected == true) then
        sound(SOUND_HIT, 4344)
        cashierDialog:hide()
        Scene.Change("payingScene") 
    elseif (noBox.selected == true) then
        sound(SOUND_HIT, 4344)
        cashierDialog:hide()
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        Scene.Change ("buyingScene")
        end
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
    if (backButton.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        Scene.Change ("mainGameScene")
    end
end