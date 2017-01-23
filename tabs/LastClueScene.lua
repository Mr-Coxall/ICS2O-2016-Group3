-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
LastClueScene = class()

local shopperMoney = {}
local itemsToSell = {}

currentMoneyValue = 0

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying

local moneyPieceOne
local moneyPieceTwo
local moneyPieceThree
local moneyPieceFour
local moneyPieceFive
local moneyPieceSix

function LastClueScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    cashier = SpriteObject("Dropbox:girlCashier", vec2(WIDTH/2-220, HEIGHT/2-70))
    desk = SpriteObject("Dropbox:desk", vec2(WIDTH/2-220, HEIGHT/2-210))
    basket = SpriteObject("Dropbox:basket", vec2(WIDTH/2-220, HEIGHT/2-220))
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-450, HEIGHT/2+320))
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-340, HEIGHT/2+320))
    nextButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2+435, HEIGHT/2-300))
    
    pencil = {}
    pencil["item"] = "Dropbox:pencil"
    pencil["cost"] = 0.35
    pencil["name"] = "pencil" 
    table.insert(itemsToSell, pencil)
     
    car = {}
    car["item"] = "Dropbox:car"
    car["cost"] = 0.15
    car["name"] = "car"
     
    table.insert(itemsToSell, car)
    
    present = {}
    present["item"] = "Dropbox:present"
    present["cost"] = 0.30
    present["name"] = "present"

    table.insert(itemsToSell, present)
    
    basketball = {}
    basketball["item"] = "Dropbox:basketball"
    basketball["cost"] = 1.25
    basketball["name"] = "basketball"
      
    table.insert(itemsToSell, basketball)
    
    football = {}
    football["item"] = "Dropbox:football"
    football["cost"] = 2.10
    football["name"] = "football"
   
    table.insert(itemsToSell, football)
    
    kitten = {}
    kitten["item"] = "Dropbox:kitten"
    kitten["cost"] = 6.00
    kitten["name"] = "kitten"
   
    table.insert(itemsToSell, kitten)
    
    glasses = {}
    glasses["item"] = "Dropbox:glasses"
    glasses["cost"] = 8.15
    glasses["name"] = "glasses"
 
    table.insert(itemsToSell, glasses)
    
    teddyBear = {}
    teddyBear["item"] = "Dropbox:teddyBear"
    teddyBear["cost"] = 3.00
    teddyBear["name"] = "teddybear"
   
    table.insert(itemsToSell, teddyBear)
    
    diaper = {}
    diaper["item"] = "Dropbox:diaper"
    diaper["cost"] = 3.50
    diaper["name"] = "diaper"
   
    table.insert(itemsToSell, diaper)  
    
    ball = {}
    ball["item"] = "Dropbox:ball"
    ball["cost"] = 4.10
    ball["name"] = "ball"
    
    table.insert(itemsToSell, ball)  
    
    book = {}
    book["item"] = "Dropbox:book"
    book["cost"] = 5.25
    book["name"] = "book"
  
    table.insert(itemsToSell, book)
    
    angel = {}
    angel["item"] = "Dropbox:angel"
    angel["cost"] = 2.40
    angel["name"] = "angel"
  
    table.insert(itemsToSell, angel)
      
    trophy = {}
    trophy["item"] = "Dropbox:trophy"
    trophy["cost"] = 10.00
    trophy["name"] = "trophy"
   
    table.insert(itemsToSell, trophy)  
 
    babyWipes = {}
    babyWipes["item"] = "Dropbox:babyWipes"
    babyWipes["cost"] = 12.05
    babyWipes["name"] = "baby wipes"
   
    table.insert(itemsToSell, babyWipes)  
    
    babySoap = {}
    babySoap["item"] = "Dropbox:babySoap"
    babySoap["cost"] = 12.35
    babySoap["name"] = "baby soap"
   
    table.insert(itemsToSell, babySoap)  
    
    hairbrush = {}
    hairbrush["item"] = "Dropbox:hairbrush"
    hairbrush["cost"] = 13.00
    hairbrush["name"] = "hairbrush"
   
    table.insert(itemsToSell, hairbrush)  
    
    babyBottle = {}
    babyBottle["item"] = "Dropbox:babyBottle"
    babyBottle["cost"] = 14.25
    babyBottle["name"] = "baby bottle"
   
    table.insert(itemsToSell, babyBottle)  
    
    sunscreen = {}
    sunscreen["item"] = "Dropbox:sunscreen"
    sunscreen["cost"] = 15.85
    sunscreen["name"] = "sunscreen"
   
    table.insert(itemsToSell, sunscreen)  
    
    shoes = {}
    shoes["item"] = "Dropbox:shoes"
    shoes["cost"] = 16.30
    shoes["name"] = "shoes"
   
    table.insert(itemsToSell, shoes)  
    
    babyDoll = {}
    babyDoll["item"] = "Dropbox:babyDoll"
    babyDoll["cost"] = 19.80
    babyDoll["name"] = "baby doll"
   
    table.insert(itemsToSell, babyDoll)  
    
    fiveCent = {}
    fiveCent["item"] = "Dropbox:fiveCent"
    fiveCent["cost"] = 0.05
    
    table.insert(shopperMoney, fiveCent)
    
    tenCent = {}
    tenCent["item"] = "Dropbox:tenCent"
    
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
    
    cashierDialog = ShowDialog("Use the glowing money pieces to buy the " .. currentItemSelectedName .. " that costs $" .. currentItemSelectedCost .. ". Please press the next button when you are finished paying for the " .. currentItemSelectedName ,vec2(WIDTH/2-5, HEIGHT/2+150), 350,190)
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
    text("NEXT", WIDTH-73, HEIGHT-752)

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
     homeButton:draw()
     nextButton:draw()
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
    homeButton:touched(touch)
    nextButton:touched(touch)
    cashierDialog:touched(touch) 
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
        Scene.Change ("settingsScene")
    end
    if (homeButton.selected == true) then
        sound(SOUND_HIT, 4344)
        Scene.Change ("mainMenuScene")
    end
end