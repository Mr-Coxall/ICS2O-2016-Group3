-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
LastClueScene = class()

function LastClueScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
   cashierDialog = ShowDialog("Try again to buy the " .. currentItemSelectedName .. " that costs $" .. currentItemSelectedCost .. ". Please press the next button when you are finished paying for the " .. currentItemSelectedName ,vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
    cashierDialog:setFont("Courier", 25)
    cashierDialog:show()   
end
function LastClueScene:draw()
    -- Codea does not automatically call this method
    background(40, 40, 50)
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,WIDTH,HEIGHT)
    
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Courier")  
    pushStyle()
    
    text ("Level " .. currentLevel , WIDTH/2+390, HEIGHT/2+350)
    fontSize(30)
    text("NEXT", WIDTH/2+435, HEIGHT/6-111)

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
     
     nextButton:draw()
     levelsButton:draw()
     undoButton:draw()
     sprite("Dropbox:hand", WIDTH/2+260, HEIGHT-500)
     cashierDialog:draw()
    
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT/2-340)
    
     moneyPieceOne:draw()
     moneyPieceTwo:draw()
     moneyPieceThree:draw()
     moneyPieceFour:draw()
     if (currentLevel == 4) then
         moneyPieceFive:draw()
    elseif (currentLevel == 5) then
         moneyPieceFive:draw()
         end
    if (currentLevel == 4) then
        moneyPieceSix:draw()
    elseif (currentLevel == 5) then
        moneyPieceSix:draw()
        end
    
   if (moneyPieceOne.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceOneValue, vec2(WIDTH/2-5, HEIGHT/2+150), 300,200)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
    elseif (moneyPieceTwo.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceTwoValue,vec2(WIDTH/2-5, HEIGHT/2+150), 300,200)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
    elseif (moneyPieceThree.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceThreeValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show() 
    elseif (moneyPieceFour.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceFourValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
        end
    if (currentLevel == 4) then
        if (moneyPieceFive.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceFiveValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
    elseif (moneyPieceSix.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceSixValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
        end
    elseif (currentLevel == 5) then
        if (moneyPieceFive.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceFiveValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
    elseif (moneyPieceSix.selected == true) then
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue+moneyPieceSixValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
        cashierDialog:setFont("Courier", 30)
        cashierDialog:show()
        end
    end
end
function LastClueScene:touched(touch)
    -- Codea does not automatically call this method   
       if (undoButton.selected == true) then
           sound(SOUND_HIT, 4344) 
           currentMoneyValue = currentMoneyValue - currentValueGiven
           end
    if (moneyPieceOne.selected == true) then
        currentValueGiven = moneyPieceOneValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
    elseif (moneyPieceTwo.selected == true) then
        currentValueGiven = moneyPieceTwoValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
    elseif (moneyPieceThree.selected == true) then
        currentValueGiven = moneyPieceThreeValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
    elseif (moneyPieceFour.selected == true) then
        currentValueGiven = moneyPieceFourValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
        end
    if (currentLevel == 4) then
        if (moneyPieceFive.selected == true) then
        currentValueGiven = moneyPieceFiveValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
    elseif (moneyPieceSix.selected == true) then
        currentValueGiven = moneyPieceSixValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
        end
    elseif (currentLevel == 5) then
        if (moneyPieceFive.selected == true) then
        currentValueGiven = moneyPieceFiveValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
    elseif (moneyPieceSix.selected == true) then
        currentValueGiven = moneyPieceSixValue
        currentMoneyValue = currentMoneyValue + currentValueGiven
        end
    end
    
    settingsButton:touched(touch)
    
    nextButton:touched(touch)
    cashierDialog:touched(touch) 
    levelsButton:touched(touch)
    undoButton:touched(touch)
    
    moneyPieceOne:touched(touch)
    moneyPieceTwo:touched(touch)
    moneyPieceThree:touched(touch)
    moneyPieceFour:touched(touch)
    if (currentLevel == 4) then
        moneyPieceFive:touched(touch)
    elseif (currentLevel == 5) then
        moneyPieceFive:touched(touch)
        end
    if (currentLevel == 4) then
        moneyPieceSix:touched(touch)
    elseif (currentLevel == 5) then
        moneyPieceSix:touched(touch)
        end

     if (nextButton.selected == true) then
         sound(SOUND_HIT, 4344)
         cashierDialog:hide()
         Scene.Change("completeBuyingProcessScene")
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