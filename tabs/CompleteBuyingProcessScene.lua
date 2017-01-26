-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
CompleteBuyingProcessScene = class()

currentItemSelected = ""
currentItemSelectedName = ""
currentItemSelectedCost = 0

wrongCounter = 0
function CompleteBuyingProcessScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    nextButton2 = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2+435, HEIGHT/2-300))

    draw1() 
end
function CompleteBuyingProcessScene:draw()
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
    
     cashier:draw()
     desk:draw()
     basket:draw()
     firstThingTheyAreBuying:draw()
     secondThingTheyAreBuying:draw()
     thirdThingTheyAreBuying:draw()
     fourthThingTheyAreBuying:draw()
     settingsButton:draw()
     
     levelsButton:draw()
     nextButton2:draw()
     cashierDialog:draw()  
    
    fontSize(30)
    text("NEXT", WIDTH/2+435, HEIGHT/6-111)
    popStyle()  
end 
function CompleteBuyingProcessScene:touched(touch)
    -- Codea does not automatically call this method 
    
    settingsButton:touched(touch)
      
    nextButton2:touched(touch)
    levelsButton:touched(touch)
    cashierDialog:touched(touch) 

    if (nextButton2.selected == true) then
        if (currentMoneyValue == currentItemSelectedCost) then
            sound(SOUND_HIT, 4344)
            cashierDialog:hide()
            Scene.Change("buyingMoreItemsScene")
            end
    end
    if (nextButton2.selected == true) then
        sound(SOUND_HIT, 4344)
        if (pointsInLevel == 4) then
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
    end
    if (nextButton2.selected == true) then
        if (currentMoneyValue ~= currentItemSelectedCost) then
            sound(SOUND_HIT, 4344)
            Scene.Change("payingScene")    
            end  
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
end 
function draw1()
    print("before " .. type(currentMoneyValue) .. "," .. type(currentItemSelectedCost))
    if (currentMoneyValue < currentItemSelectedCost) then
        print("1")
    end
    
    if (currentMoneyValue > currentItemSelectedCost) then
        print("2 => " .. currentMoneyValue * 100000000)
    end
    
    
    
    if(currentMoneyValue <= currentItemSelectedCost) then
        print("3" .. currentMoneyValue * 100000000)
    end
     if (currentMoneyValue == currentItemSelectedCost) then
print("inside")
        cashierDialog = ShowDialog("Congratulations! You have successfully bought the " .. currentItemSelectedName .. ". Press the next button.",vec2(WIDTH/2-5, HEIGHT/2+150), 350,200)
        cashierDialog:setFont("Courier", 28)
        cashierDialog:show()
        pointsInLevel = pointsInLevel + 1
        currentMoneyValue = 0
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
     elseif (currentMoneyValue ~= currentItemSelectedCost) then
        print(currentMoneyValue .. "," .. currentItemSelectedCost)
        cashierDialog = ShowDialog("Sorry! That is not the correct amount of money needed to buy the " ..  currentItemSelectedName .. ". You have paid $" .. currentMoneyValue .. " but the item costs $" .. currentItemSelectedCost .. ". Please press the next button to ttry again.",vec2(WIDTH/2-5, HEIGHT/2+150), 350, 190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
        currentMoneyValue = 0
        wrongCounter = wrongCounter + 1
        end
    
    if (wrongCounter > 3) then
        cashierDialog:hide()
        wrongCounter = 0
        Scene.Change ("lastClueScene")
        end
end