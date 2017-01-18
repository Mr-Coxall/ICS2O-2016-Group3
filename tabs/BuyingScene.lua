-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016

BuyingScene = class()
local itemsToSell = {} 

levelSelected = 1
pointsInLevel = 0
currentItemSelected = ""

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying
local startTime
local hasTouchedOnce = false
local counter = 0
local startTime

function BuyingScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
     sprite("Dropbox:Red Back Circle Button") 
    
    startTime = ElapsedTime

    yesBox = Button("Dropbox:Condition Green", vec2(WIDTH/2+50, HEIGHT/2-45))
    noBox = Button("Dropbox:Condition Red", vec2(WIDTH/2-50, HEIGHT/2-45))
    nextButton1 = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH-75, HEIGHT-680))
    
         pencil = {}
    pencil["cost"] = 0.35
    pencil["name"] = "pencil"
    
    table.insert(itemsToSell, pencil)
    print(itemsToSell[1]["item"])
     
    car = {}
    car["item"] = "Dropbox:car"
    car["cost"] = 0.15
    car["name"] = "car"
     
    table.insert(itemsToSell, car)
    print(itemsToSell[2]["item"])
    
    present = {}
    present["item"] = "Dropbox:Chest Closed"
    present["cost"] = 0.30
    present["name"] = "present"

    table.insert(itemsToSell, present)
    print(itemsToSell[3]["item"])
    
     baseball = {}
    baseball["item"] = "Dropbox:basketball"
    baseball["cost"] = 1.25
    baseball["name"] = "basketball"
      
    table.insert(itemsToSell, baseball)
    print(itemsToSell[4]["item"])
    
    football = {}
    football["item"] = "Dropbox:football"
    football["cost"] = 2.10
    football["name"] = "football"
   
    table.insert(itemsToSell, football)
    print(itemsToSell[5]["item"])
    
    kitten = {}
    kitten["item"] = "Dropbox:Character Boy"
    kitten["cost"] = 6.00
    kitten["name"] = "kitten"
   
    table.insert(itemsToSell, kitten)
    print(itemsToSell[6]["item"]) 
    
    glasses = {}
    glasses["item"] = "Dropbox:glasses"
    glasses["cost"] = 8.15
    glasses["name"] = "glasses"
 
    table.insert(itemsToSell, glasses)
    print(itemsToSell[7]["item"])
    
    teddyBear = {}
    teddyBear["item"] = "Dropbox:Character Princess Girl"
    teddyBear["cost"] = 3.00
    teddyBear["name"] = "teddybear"
   
    table.insert(itemsToSell, teddyBear)
    print(itemsToSell[8]["item"])
    
    book = {}
    book["item"] = "Dropbox:Chest Lid"
    book["cost"] = 5.25
    book["name"] = "book"
  
    table.insert(itemsToSell, book)
    print(itemsToSell[9]["item"])
    
    angel = {}
    angel["item"] = "Dropbox:angel"
    angel["cost"] = 2.40
    angel["name"] = "angel"
  
    table.insert(itemsToSell, angel)
    print(itemsToSell[10]["item"])
      
    trophy = {}
    trophy["item"] = "Dropbox:trophy"
    trophy["cost"] = 10
    trophy["name"] = "trophy"
   
    table.insert(itemsToSell, trophy)
    print(itemsToSell[11]["item"]) 
    
    backButton = Button("Dropbox:Red Back Circle Button", vec2(WIDTH-195, HEIGHT-680))
    
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
    
    firstThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+1]["name"])
    secondThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+2]["name"])
    thirdThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+3]["name"])
    fourthThingTheyAreBuyingName = (itemsToSell[(levelSelected-1)*4+4]["name"])
     
    end

function BuyingScene:draw()
    -- Codea does not automatically call this method
    background(40, 40, 50)
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,WIDTH,HEIGHT)
    
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Courier")  
    pushStyle()
    
    text ("Level " .. levelSelected , WIDTH-130, HEIGHT-50)
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT-730)
    text("NEXT", WIDTH-73, HEIGHT-752)
    text("BACK", WIDTH-196, HEIGHT-752)
    -- This sets a dark background color 
    
    -- this displays desk,girl/boy and buttons
    
    sprite("Project:shelf", WIDTH/2+200, HEIGHT-198)
    sprite("Cargo Bot:Condition Green", WIDTH/2+50, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+150, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+250, HEIGHT-290)
    sprite("Cargo Bot:Condition Green", WIDTH/2+350, HEIGHT-290) 
   -- sprite())
    
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
     nextButton1:draw()
     backButton:draw()
    -- cashierDialog1:draw()  
     cashierDialog:draw()
    
    if (nextButton1.selected == true) then
     noBox:draw()
          yesBox:draw()
         fontSize(20)
    text ("NO", WIDTH/2-50, HEIGHT/2-45)
    text ("YES", WIDTH/2+50, HEIGHT/2-45)   
        popStyle()    
    end
end 

function BuyingScene:touched(touch)
    -- Codea does not automatically call this method 
    
    if (firstThingTheyAreBuying:isTouching(basket) == true) then
       cashierDialog = ShowDialog("That will cost $" .. firstThingTheyAreBuyingCost .. ".", vec2(WIDTH/2-5, HEIGHT-310), 350,190)
       cashierDialog:setFont("Courier", 25)
       cashierDialog:show()
       hasTouchedOnce = true
        --counter = counter + 1
        currentItemSelected = firstThingTheyAreBuying
        currentItemSelectedName = firstThingTheyAreBuyingName
        currentItemSelectedCost = firstThingTheyAreBuyingCost
     elseif (secondThingTheyAreBuying:isTouching(basket) == true) then
        cashierDialog = ShowDialog("That will cost $" .. secondThingTheyAreBuyingCost .. ".",vec2(WIDTH/2-5, HEIGHT-310), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
      --  counter = counter + 1
        currentItemSelected = secondThingTheyAreBuying
        currentItemSelectedName = secondThingTheyAreBuyingName
        currentItemSelectedCost = secondThingTheyAreBuyingCost
     elseif (thirdThingTheyAreBuying:isTouching(basket) == true) then  
         cashierDialog = ShowDialog("That will cost $" .. thirdThingTheyAreBuyingCost .. ".",vec2(WIDTH/2-5, HEIGHT-310), 350,190)
          cashierDialog:setFont("Courier", 25)
         cashierDialog:show() 
        currentItemSelected = thirdThingTheyAreBuying
        currentItemSelectedName = thirdThingTheyAreBuyingName
        currentItemSelectedCost = thirdThingTheyAreBuyingCost 
   elseif (fourthThingTheyAreBuying:isTouching(basket) == true) then
        cashierDialog= ShowDialog("That will cost $" .. fourthThingTheyAreBuyingCost .. ".",vec2(WIDTH/2-5, HEIGHT-310), 350,190)
        cashierDialog:setFont("Courier", 25)
        cashierDialog:show()
       -- counter = counter + 1
        currentItemSelected = fourthThingTheyAreBuying
        currentItemSelectedName = fourthThingTheyAreBuyingName
        currentItemSelectedCost = fourthThingTheyAreBuyingCost
     end
  --   if (hasTouchedOnce == true) then
    --    counter = counter + 1 
   -- elseif (hasTouchedOnce == false) then
    --    counter = 0
  --   end
   -- if (counter == 1) then
   --     cashierDialog1:show()
     --   if((startTime + 2) < ElapsedTime) then
       --     cashierDialog1:hide()
   --     end
  --  elseif (counter == 0) then
          --  cashierDialog:hide()
   --  end
    
    if (nextButton1.selected == true) then
        while (currentItemSelected == "") do
        cashierDialog = ShowDialog("Please select 1 item.",vec2(WIDTH/2-5, HEIGHT-310), 350,190)
    cashierDialog:setFont("Courier", 25)
    cashierDialog:show()
       end
   end
     
    firstThingTheyAreBuying:touched(touch)
    secondThingTheyAreBuying:touched(touch)
    thirdThingTheyAreBuying:touched(touch)
    fourthThingTheyAreBuying:touched(touch)
    settingsButton:touched(touch)
    homeButton:touched(touch)
    nextButton1:touched(touch)  
    backButton:touched(touch)
   -- cashierDialog1:touched(touch) 
    cashierDialog:touched(touch)
    noBox:touched(touch)
    yesBox:touched(touch)
    
    if (nextButton1.selected == true) then
        cashierDialog:hide()
        cashierDialog = ShowDialog("Are you sure you want to buy the " .. currentItemSelectedName .. ".", vec2(WIDTH/2, HEIGHT/2), 400,200)
       cashierDialog:setFont("Courier", 25)
       cashierDialog:show()
    end
    if (yesBox.selected == true) then
        Scene.Change("payingScene") 
     elseif (noBox.selected == true) then
            cashierDialog:hide()
            Scene.Change ("buyingScene")
     end
    if(backButton.selected == true) then
        Scene.Change("mainGameScene")
    end
end