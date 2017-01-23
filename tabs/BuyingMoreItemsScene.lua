-- ICS2O-2016-Group3

-- Created by: Sidney Kang
-- Created on: November 25, 2016
-- Created for: ICS2O
-- This is the project for Group #3-2016
BuyingMoreItemsScene = class()
local itemsToSell = {}

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying

function BuyingMoreItemsScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    startTime = ElapsedTime
    
    cashier = SpriteObject("Dropbox:cashierGirl", vec2(WIDTH-740, HEIGHT-500))
    desk = SpriteObject("Dropbox:desk", vec2(WIDTH-740, HEIGHT-560))
    basket = SpriteObject("Dropbox:basket", vec2(WIDTH-740, HEIGHT-660))
    homeButton = Button("Dropbox:Red Level Menu Button", vec2(WIDTH-950, HEIGHT-80))
    settingsButton = Button("Dropbox:Red Settings Button", vec2(WIDTH-830, HEIGHT-80))
    nextButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH-75, HEIGHT-680))
    backButton = Button("Dropbox:Red Back Circle Button", vec2(WIDTH-195, HEIGHT-680))
    yesBox = Button("Dropbox:Condition Green", vec2(WIDTH/2+50, HEIGHT/2-45))
    noBox = Button("Dropbox:Condition Red", vec2(WIDTH/2-50, HEIGHT/2-45))
    
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
    
    firstThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+1]["item"], vec2(WIDTH/2+20, HEIGHT/2+120))
    firstThingTheyAreBuying.draggable = true
    secondThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+2]["item"], vec2(WIDTH/2+135, HEIGHT/2+120))
    secondThingTheyAreBuying.draggable = true
    thirdThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+3]["item"], vec2(WIDTH/2+270, HEIGHT/2+120),10,50)
    thirdThingTheyAreBuying.draggable = true
    fourthThingTheyAreBuying = SpriteObject(itemsToSell[(currentLevel-1)*4+4]["item"], vec2(WIDTH/2+424, HEIGHT/2+120))
    fourthThingTheyAreBuying.draggable = true
    
    firstThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+1]["cost"])
    secondThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+2]["cost"])
    thirdThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+3]["cost"])
    fourthThingTheyAreBuyingCost = (itemsToSell[(currentLevel-1)*4+4]["cost"]) 
 
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
     homeButton:draw()  
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
     yesBox:touched(touch)
     noBox:touched(touch)
    
    if (yesBox.selected == true) then
        sound(SOUND_HIT, 4344)
        firstThingHasTouched = false
        secondThingHasTouched = false
        thirdThingHasTouched = false
        fourthThingHasTouched = false
        wrongCounter = 0
        Scene.Change ("buyingScene")
    elseif (noBox.selected == true) then
        sound(SOUND_HIT, 4344)
        wrongCounter = 0
        Scene.Change ("mainGameScene")
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