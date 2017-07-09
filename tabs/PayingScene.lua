-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
PayingScene = class()

shopperMoney = {}
currentMoneyValue = 0

local currentValueGiven

moneyPieceOne = ""
moneyPieceTwo = ""
moneyPieceThree = ""
moneyPieceFour = ""
moneyPieceFive = ""
moneyPieceSix = ""

function PayingScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  
    
    undoButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/2-65, HEIGHT/2-15))
    
    fiveCent = {}
    fiveCent["item"] = "Dropbox:fiveCent"
    fiveCent["cost"] = 0.05
    
    table.insert(shopperMoney, fiveCent)
    
    tenCent = {}
    tenCent["item"] = "Dropbox:tenCent"
    tenCent["cost"] = 0.10
    
    table.insert(shopperMoney, tenCent)
    
    twentyFiveCent = {}
    twentyFiveCent["item"] = "Dropbox:twentyFiveCent"
    twentyFiveCent["cost"] = 0.25
     
    table.insert(shopperMoney, twentyFiveCent)
    
    oneDollar = {}
    oneDollar["item"] = "Dropbox:oneDollar"
    oneDollar["cost"] = 1.00
     
    table.insert(shopperMoney, oneDollar)
    
    twoDollar = {}
    twoDollar["item"] = "Dropbox:twoDollar"
    twoDollar["cost"] = 2.00
      
    table.insert(shopperMoney, twoDollar)
    
    FiveDollarBill = {}
    FiveDollarBill["item"] = "Dropbox:fiveDollar"
    FiveDollarBill["cost"] = 5.00
    
    table.insert(shopperMoney, FiveDollarBill)
  
    if (currentLevel == 1) then
        moneyPieceOne = Button(shopperMoney[(currentLevel-1)*4+1]["item"], vec2(WIDTH/2+160, HEIGHT/2-160))
        moneyPieceTwo = Button(shopperMoney[(currentLevel-1)*4+2]["item"], vec2(WIDTH/2+200, HEIGHT/2-240))
        moneyPieceThree = Button(shopperMoney[(currentLevel-1)*4+3]["item"], vec2(WIDTH/2+240, HEIGHT/2-100))
        moneyPieceFour = Button(shopperMoney[(currentLevel-1)*4+4]["item"], vec2(WIDTH/2+300, HEIGHT/2-210)) 
        end
    if (currentLevel == 2) then
        moneyPieceOne = Button(shopperMoney[(currentLevel-2)*4+1]["item"], vec2(WIDTH/2+160, HEIGHT/2-160))
        moneyPieceTwo = Button(shopperMoney[(currentLevel-2)*4+2]["item"], vec2(WIDTH/2+200, HEIGHT/2-240))
        moneyPieceThree = Button(shopperMoney[(currentLevel-2)*4+4]["item"], vec2(WIDTH/2+240, HEIGHT/2-100))
        moneyPieceFour = Button(shopperMoney[(currentLevel-2)*4+5]["item"], vec2(WIDTH/2+300, HEIGHT/2-210))      
        end
    if (currentLevel == 3) then
        moneyPieceOne = Button(shopperMoney[(currentLevel-3)*4+2]["item"], vec2(WIDTH/2+160, HEIGHT/2-160))
        moneyPieceTwo = Button(shopperMoney[(currentLevel-3)*4+3]["item"], vec2(WIDTH/2+200, HEIGHT/2-240))
        moneyPieceThree = Button(shopperMoney[(currentLevel-3)*4+4]["item"], vec2(WIDTH/2+240, HEIGHT/2-100))
        moneyPieceFour = Button(shopperMoney[(currentLevel-3)*4+5]["item"], vec2(WIDTH/2+300, HEIGHT/2-210))      
        end
    if (currentLevel == 4) then
        moneyPieceOne = Button(shopperMoney[(currentLevel-4)*4+1]["item"], vec2(WIDTH/2+160, HEIGHT/2-160))
        moneyPieceTwo = Button(shopperMoney[(currentLevel-4)*4+4]["item"], vec2(WIDTH/2+200, HEIGHT/2-240))
        moneyPieceThree = Button(shopperMoney[(currentLevel-4)*4+5]["item"], vec2(WIDTH/2+240, HEIGHT/2-100))
        moneyPieceFour = Button(shopperMoney[(currentLevel-4)*4+6]["item"], vec2(WIDTH/2+360, HEIGHT/2-210)) 
        moneyPieceFive = Button(shopperMoney[(currentLevel-4)*4+2]["item"], vec2(WIDTH/2+300, HEIGHT/2-310))
        moneyPieceSix =  Button(shopperMoney[(currentLevel-4)*4+3]["item"], vec2(WIDTH/2+330, HEIGHT/2-120))    
        end
    if (currentLevel == 5) then
        moneyPieceOne = Button(shopperMoney[(currentLevel-5)*4+1]["item"], vec2(WIDTH/2+160, HEIGHT/2-160))
        moneyPieceTwo = Button(shopperMoney[(currentLevel-5)*4+4]["item"], vec2(WIDTH/2+200, HEIGHT/2-240))
        moneyPieceThree = Button(shopperMoney[(currentLevel-5)*4+5]["item"], vec2(WIDTH/2+240, HEIGHT/2-100))
        moneyPieceFour = Button(shopperMoney[(currentLevel-5)*4+6]["item"], vec2(WIDTH/2+360, HEIGHT/2-210))       
        moneyPieceFive = Button(shopperMoney[(currentLevel-5)*4+2]["item"], vec2(WIDTH/2+330, HEIGHT/2-120))
        moneyPieceSix = Button(shopperMoney[(currentLevel-5)*4+3]["item"], vec2(WIDTH/2+300, HEIGHT/2-310))
     end
     if (currentLevel == 1) then
         moneyPieceOneValue = (shopperMoney[(currentLevel-1)*4+1]["cost"])
         moneyPieceTwoValue = (shopperMoney[(currentLevel-1)*4+2]["cost"])
         moneyPieceThreeValue = (shopperMoney[(currentLevel-1)*4+3]["cost"])
         moneyPieceFourValue = (shopperMoney[(currentLevel-1)*4+4]["cost"])
         end
     if (currentLevel == 2) then
         moneyPieceOneValue = (shopperMoney[(currentLevel-2)*4+1]["cost"])
         moneyPieceTwoValue = (shopperMoney[(currentLevel-2)*4+2]["cost"])
         moneyPieceThreeValue = (shopperMoney[(currentLevel-2)*4+4]["cost"])
         moneyPieceFourValue = (shopperMoney[(currentLevel-2)*4+5]["cost"])
         end
     if (currentLevel == 3) then
         moneyPieceOneValue = (shopperMoney[(currentLevel-3)*4+2]["cost"])
         moneyPieceTwoValue = (shopperMoney[(currentLevel-3)*4+3]["cost"])
         moneyPieceThreeValue = (shopperMoney[(currentLevel-3)*4+4]["cost"])
         moneyPieceFourValue = (shopperMoney[(currentLevel-3)*4+5]["cost"])
         end
     if (currentLevel == 4) then
         moneyPieceOneValue = (shopperMoney[(currentLevel-4)*4+1]["cost"])
         moneyPieceTwoValue = (shopperMoney[(currentLevel-4)*4+4]["cost"])
         moneyPieceThreeValue = (shopperMoney[(currentLevel-4)*4+5]["cost"])
         moneyPieceFourValue = (shopperMoney[(currentLevel-4)*4+6]["cost"])
         moneyPieceFiveValue = (shopperMoney[(currentLevel-4)*4+2]["cost"])
         moneyPieceSixValue = (shopperMoney[(currentLevel-4)*4+3]["cost"])
         end
     if (currentLevel == 5) then
         moneyPieceOneValue = (shopperMoney[(currentLevel-5)*4+1]["cost"])
         moneyPieceTwoValue = (shopperMoney[(currentLevel-5)*4+4]["cost"])
         moneyPieceThreeValue = (shopperMoney[(currentLevel-5)*4+5]["cost"])
         moneyPieceFourValue = (shopperMoney[(currentLevel-5)*4+6]["cost"])  
         moneyPieceFiveValue = (shopperMoney[(currentLevel-5)*4+2]["cost"])
         moneyPieceSixValue = (shopperMoney[(currentLevel-5)*4+3]["cost"])
         end
    firstThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+1]["name"])
    secondThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+2]["name"])
    thirdThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+3]["name"])
    fourthThingTheyAreBuyingName = (itemsToSell[(currentLevel-1)*4+4]["cost"])
    
    cashierDialog = ShowDialog("The " .. currentItemSelectedName .. " costs $" .. currentItemSelectedCost .. ". Select the amount of money needed to buy the " .. currentItemSelectedName .. ". Please press the next button when you are finished paying for the " .. currentItemSelectedName .. "." ,vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
    cashierDialog:setFont("Courier", 25)
    cashierDialog:show()  
end
function PayingScene:draw()
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
     
     nextButton:draw()
     backButton:draw()
     levelsButton:draw()
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
     undoButton:draw()
    
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
     if (undoButton.selected == true) then
         cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue - currentMoneyValue,vec2(WIDTH/2-5, HEIGHT/2+150), 200,100)
         cashierDialog:setFont("Courier", 30)
         cashierDialog:show()
         currentMoneyValue = 0
         currentValueGiven = 0
     end
end
function PayingScene:touched(touch)
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
        currentValueGiven = 0
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
    levelsButton:touched(touch)
    backButton:touched(touch)
    cashierDialog:touched(touch) 
    
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
    undoButton:touched(touch)
    
     if (nextButton.selected == true) then
        cashierDialog:hide()
        sound(SOUND_HIT, 4344)
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
    if (backButton.selected == true) then
        sound(SOUND_HIT, 4344)
        currentItemSelected = ""
        currentItemSelectedName = ""
        currentItemSelectedCost = 0
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        Scene.Change ("buyingScene")
    end
end