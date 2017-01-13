-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016

BuyingMoreItemsScene = class()
local itemsToSell = {}

levelSelected = 1
pointsInLevel = 0

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying
local startTime

function BuyingMoreItemsScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
     sprite("Cargo Bot:Condition Green") 
    
    startTime = ElapsedTime
    
    cashier = SpriteObject("Project:cashierGirl", vec2(WIDTH-740, HEIGHT-500))
    desk = SpriteObject("Project:desk", vec2(WIDTH-740, HEIGHT-560))
    basket = SpriteObject("Project:basket", vec2(WIDTH-740, HEIGHT-660))
    homeButton = Button("Dropbox:Red Level Menu Button", vec2(WIDTH-950, HEIGHT-80))
    settingsButton = Button("Dropbox:Red Settings Button", vec2(WIDTH-830, HEIGHT-80))
    nextButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH-75, HEIGHT-680))
    backButton = Button("Dropbox:Red Back Circle Button", vec2(WIDTH-195, HEIGHT-680))
    yesBox = Button("Cargo Bot:Condition Green", vec2(WIDTH/2+50, HEIGHT/2-45))
    noBox = Button("Cargo Bot:Condition Red", vec2(WIDTH/2-50, HEIGHT/2-45))
    
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
 
    sceneDialog = ShowDialog("Would you like to buy any more items?",vec2(WIDTH/2, HEIGHT/2),400,200)
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
    
    text ("Level " .. levelSelected , WIDTH-130, HEIGHT-50)
    fontSize(30)
    text ("POINTS: " .. pointsInLevel, WIDTH/2+90, HEIGHT-730)
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
    
     cashier:draw()
     desk:draw()
     basket:draw()
     firstThingTheyAreBuying:draw()
     secondThingTheyAreBuying:draw()
     thirdThingTheyAreBuying:draw()
     fourthThingTheyAreBuying:draw()
     settingsButton:draw()
     homeButton:draw()  
     sceneDialog:draw()
     yesBox:draw()
     noBox:draw()
    
    fontSize(20)
    text ("NO", WIDTH/2-50, HEIGHT/2-45)
    text ("YES", WIDTH/2+50, HEIGHT/2-45)
    popStyle()
    
    end 

function BuyingMoreItemsScene:touched(touch)
    -- Codea does not automatically call this method 
     sceneDialog:touched(touch)
    yesBox:touched(touch)
    noBox:touched(touch)
    
    if (yesBox.selected == true) then
        Scene.Change ("buyingScene")
        elseif (noBox.selected == true) then
        Scene.Change ("mainGameScene")
    end
end
