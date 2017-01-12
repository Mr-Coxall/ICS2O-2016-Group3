-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016

LastClueScene = class()
local shopperMoney = {}
local itemsToSell = {}
currentMoneyValue = 0
local touchingCounter = true
local startTime

levelSelected = 1
pointsInLevel = 0

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying

local moneyPieceOne
local moneyPieceTwo
local moneyPieceThree
local moneyPieceFour

function LastClueScene:init(x)
    -- you can accept and set parameters here
   displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
     sprite("Project:textbox") 
    startTime = ElapsedTime
    
    cashier = SpriteObject("Project:cashierGirl", vec2(WIDTH-740, HEIGHT-500))
    desk = SpriteObject("Project:desk", vec2(WIDTH-740, HEIGHT-560))
    basket = SpriteObject("Project:basket", vec2(WIDTH-740, HEIGHT-660))
    homeButton = Button("Dropbox:Red Level Menu Button", vec2(WIDTH-950, HEIGHT-80))
    settingsButton = Button("Dropbox:Red Settings Button", vec2(WIDTH-830, HEIGHT-80))
    nextButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH-75, HEIGHT-680))
    
          pencil = {}
    pencil["item"] = "Project:pencil"
    pencil["cost"] = 0.35
    pencil["name"] = "pencil"
    
    table.insert(itemsToSell, pencil)
    print(itemsToSell[1]["item"])
     
    car = {}
    car["item"] = "Project:car"
    car["cost"] = 0.15
    car["name"] = "car"
     
    table.insert(itemsToSell, car)
    print(itemsToSell[2]["item"])
    
    present = {}
    present["item"] = "Planet Cute:Chest Closed"
    present["cost"] = 0.30
    present["name"] = "present"

    table.insert(itemsToSell, present)
    print(itemsToSell[3]["item"])
    
     baseball = {}
    baseball["item"] = "Project:basketball"
    baseball["cost"] = 1.25
    baseball["name"] = "basketball"
      
    table.insert(itemsToSell, baseball)
    print(itemsToSell[4]["item"])
    
    football = {}
    football["item"] = "Project:football"
    football["cost"] = 2.10
    football["name"] = "football"
   
    table.insert(itemsToSell, football)
    print(itemsToSell[5]["item"])
    
    kitten = {}
    kitten["item"] = "Planet Cute:Character Boy"
    kitten["cost"] = 6.00
    kitten["name"] = "kitten"
   
    table.insert(itemsToSell, kitten)
    print(itemsToSell[6]["item"]) 
    
    glasses = {}
    glasses["item"] = "Project:glasses"
    glasses["cost"] = 8.15
    glasses["name"] = "glasses"
 
    table.insert(itemsToSell, glasses)
    print(itemsToSell[7]["item"])
    
    teddyBear = {}
    teddyBear["item"] = "Planet Cute:Character Princess Girl"
    teddyBear["cost"] = 3.00
    teddyBear["name"] = "teddybear"
   
    table.insert(itemsToSell, teddyBear)
    print(itemsToSell[8]["item"])
    
    book = {}
    book["item"] = "Planet Cute:Chest Lid"
    book["cost"] = 5.25
    book["name"] = "book"
  
    table.insert(itemsToSell, book)
    print(itemsToSell[9]["item"])
    
    angel = {}
    angel["item"] = "Project:angel"
    angel["cost"] = 2.40
    angel["name"] = "angel"
  
    table.insert(itemsToSell, angel)
    print(itemsToSell[10]["item"])
      
    trophy = {}
    trophy["item"] = "Project:trophy"
    trophy["cost"] = 10
    trophy["name"] = "trophy"
   
    table.insert(itemsToSell, trophy)
    print(itemsToSell[11]["item"])
    
    
      fiveCent = {}
    fiveCent["item"] = "Planet Cute:Door Tall Open"
    fiveCent["cost"] = 0.05
    
    table.insert(shopperMoney, fiveCent)
    print(shopperMoney[1]["item"])
    
    tenCent = {}
    tenCent["item"] = "Project:tenCent"
    tenCent["cost"] = 0.10
    
    table.insert(shopperMoney, tenCent)
    print(shopperMoney[2]["item"])
    
    twentyFiveCent = {}
    twentyFiveCent["item"] = "Project:twentyFiveCent"
    twentyFiveCent["cost"] = 0.25
     
    table.insert(shopperMoney, twentyFiveCent)
    print(shopperMoney[3]["item"])
    
    oneDollar = {}
    oneDollar["item"] = "Project:oneDollar"
    oneDollar["cost"] = 1.00
     
    table.insert(shopperMoney, oneDollar)
    print(shopperMoney[4]["item"])
    
      twoDollar = {}
    twoDollar["item"] = "Project:twoDollar"
    twoDollar["cost"] = 2.00
      
    table.insert(shopperMoney, twoDollar)
    print(shopperMoney[5]["item"])
    
    FiveDollarBill = {}
    FiveDollarBill["item"] = "Project:fiveDollar"
    FiveDollarBill["cost"] = 5.00
    
    table.insert(shopperMoney, FiveDollarBill)
    print(shopperMoney[6]["item"])
    
       firstThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+1]["item"], vec2(WIDTH/2+50, HEIGHT-150))
    firstThingTheyAreBuying.draggable = true
    secondThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+2]["item"], vec2(WIDTH/2+150, HEIGHT-150))
    secondThingTheyAreBuying.draggable = true
    thirdThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+3]["item"], vec2(WIDTH/2+250, HEIGHT-150),10,50)
    thirdThingTheyAreBuying.draggable = true
    fourthThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+4]["item"], vec2(WIDTH/2+350, HEIGHT-150))
    fourthThingTheyAreBuying.draggable = true
    
    firstThingTheyAreBuyingCost = (itemsToSell[(levelSelected-1)*4+1]["cost"])
    secondThingTheyAreBuyingCost = (itemsToSell[(levelSelected-1)*4+2]["cost"])
    thirdThingTheyAreBuyingCost = (itemsToSell[(levelSelected-1)*4+3]["cost"])
    fourthThingTheyAreBuyingCost = (itemsToSell[(levelSelected-1)*4+4]["cost"])
    
    moneyPieceOne = SpriteObject(shopperMoney[(levelSelected-1)*4+1]["item"], vec2(WIDTH/2+130, HEIGHT-550))
    moneyPieceOne.draggable = true
    moneyPieceTwo = SpriteObject(shopperMoney[(levelSelected-1)*4+2]["item"], vec2(WIDTH/2+180, HEIGHT-450))
    moneyPieceTwo.draggable = true
    moneyPieceThree = SpriteObject(shopperMoney[(levelSelected-1)*4+3]["item"], vec2(WIDTH/2+290, HEIGHT-510))
    moneyPieceThree.draggable = true
    moneyPieceFour = SpriteObject(shopperMoney[(levelSelected-1)*4+4]["item"], vec2(WIDTH/2+250, HEIGHT-630))  
    moneyPieceFour.draggable = true
    
    moneyPieceOneValue = (shopperMoney[(levelSelected-1)*4+1]["cost"])
    moneyPieceTwoValue = (shopperMoney[(levelSelected-1)*4+2]["cost"])
    moneyPieceThreeValue = (shopperMoney[(levelSelected-1)*4+3]["cost"])
    moneyPieceFourValue = (shopperMoney[(levelSelected-1)*4+4]["cost"])
    
    firstThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+1]["name"])
    secondThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+2]["name"])
    thirdThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+3]["name"])
    fourthThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+4]["cost"])
    
    cashierDialog = ShowDialog("Use the glowing money pieces to buy the " .. currentItemSelectedName .. " that costs $" .. currentItemSelectedCost .. ". Please press the next button when you are finished paying for the " .. currentItemSelectedName ,vec2(WIDTH/2-5, HEIGHT-310), 350,190)
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
    
    text ("Level " .. levelSelected , WIDTH-130, HEIGHT-50)
    fontSize(30)
    text("NEXT", WIDTH-73, HEIGHT-752)
    -- This sets a dark background color 
   -- sprite("Project:basket")
    -- this displays desk,girl/boy and buttons

    sprite("Project:shelf", WIDTH/2+200, HEIGHT-198)
    sprite("Cargo Bot:Condition Green", WIDTH/2+50, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+150, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+250, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+350, HEIGHT-290)
    
    fontSize(15)
    text ("$" .. firstThingTheyAreBuyingCost, WIDTH/2+50, HEIGHT-290)
    text ("$" .. secondThingTheyAreBuyingCost, WIDTH/2+150, HEIGHT-290)
    text ("$" .. thirdThingTheyAreBuyingCost, WIDTH/2+250, HEIGHT-290)
    text ("$" .. fourthThingTheyAreBuyingCost, WIDTH/2+350, HEIGHT-290)  
    
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
    sprite("Project:hand", WIDTH-310, HEIGHT-500)
    cashierDialog:draw()
    
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT-730)
    
     moneyPieceOne:draw()
     moneyPieceTwo:draw()
     moneyPieceThree:draw()
     moneyPieceFour:draw()
end

function LastClueScene:touched(touch)
    -- Codea does not automatically call this method   
        if moneyPieceOne:isTouching(cashier) == true then
        print("touching")
        recentlyGivenmoney = moneyPieceOneValue
currentMoneyValue = currentMoneyValue + moneyPieceOneValue
            cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue, vec2(WIDTH/2-5, HEIGHT-310), 300,200)
    cashierDialog:setFont("Courier", 30)
    cashierDialog:show()
 elseif moneyPieceTwo:isTouching(cashier) == true then
        print("touching1")
        recentlyGivenmoney = moneyPieceTwoValue
currentMoneyValue = currentMoneyValue + moneyPieceTwoValue
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue,vec2(WIDTH/2-5, HEIGHT-310), 300,200)
    cashierDialog:setFont("Courier", 30)
    cashierDialog:show()
 elseif moneyPieceThree:isTouching(cashier) == true then
        print("touching2")
        recentlyGivenmoney = moneyPieceThreeValue
currentMoneyValue = currentMoneyValue + moneyPieceThreeValue
         cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue,vec2(WIDTH/2-5, HEIGHT-310), 200,100)
    cashierDialog:setFont("Courier", 30)
    cashierDialog:show() 
 elseif moneyPieceFour:isTouching(cashier) == true then
        print("touching3")
        recentlyGivenmoney = moneyPieceFourValue
        currentMoneyValue = currentMoneyValue + moneyPieceFourValue
        cashierDialog = ShowDialog("You have paid $" .. currentMoneyValue,vec2(WIDTH/2-5, HEIGHT-310), 200,100)
    cashierDialog:setFont("Courier", 30)
    cashierDialog:show()
            end
    
     if (undoButton.selected == true) then
        currentMoneyValue = currentMoneyValue - recentlyGivenmoney
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
    

     if (nextButton.selected == true) then
        cashierDialog:hide()
        Scene.Change("completeBuyingProcessScene")
        end

end