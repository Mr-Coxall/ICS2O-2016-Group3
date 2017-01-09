



MainGameScene = class()
local itemsToSell = {}

levelSelected = 1

local firstThingTheyAreBuying
local secondThingTheyAreBuying
local thirdThingTheyAreBuying
local fourthThingTheyAreBuying

-- Use this function to perform your initial setup
function MainGameScene:init(x)
    -- you can accept and set parameters here
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    sprite("Dropbox:Teal Forward Circle Button") 
    
    settingsButton = Button("Dropbox:Red Settings Button", vec2(WIDTH-830,HEIGHT-80))
    nextButton = Button("Dropbox:Teal Forward Circle Button", vec2(WIDTH-10, HEIGHT-300))
    
    pencil = {}
    pencil["item"] = "Planet Cute:Character Cat Girl"
    pencil["cost"] = 0.35
    
    print(pencil["item"])
    print(pencil["cost"])
    
    table.insert(itemsToSell, pencil)
    print(itemsToSell[1]["item"])
     
    car = {}
    car["item"] = "Planet Cute:Character Pink Girl"
    car["cost"] = 0.15
    
    print(car["item"])
    print(car["cost"])
    
    table.insert(itemsToSell, car)
    print(itemsToSell[2]["item"])
    
    present = {}
    present["item"] = "Planet Cute:Chest Closed"
    present["cost"] = 0.30
    
    print(present["item"])
    print(present["cost"])
    
    table.insert(itemsToSell, present)
    print(itemsToSell[3]["item"])
    
     baseball = {}
    baseball["item"] = "Planet Cute:Character Horn Girl"
    baseball["cost"] = 1.25
    
    print(baseball["item"])
    print(baseball["cost"])
    
    table.insert(itemsToSell, baseball)
    print(itemsToSell[4]["item"])
    
    football = {}
    football["item"] = "Planet Cute:Chest Open"
    football["cost"] = 2.10
    
    print(football["item"])
    print(football["cost"])
    
    table.insert(itemsToSell, football)
    print(itemsToSell[5]["item"])
    
    kitten = {}
    kitten["item"] = "Planet Cute:Character Boy"
    kitten["cost"] = 6
    
    print(kitten["item"])
    print(kitten["cost"])
    
    table.insert(itemsToSell, kitten)
    print(itemsToSell[6]["item"]) 
    
    glasses = {}
    glasses["item"] = "Planet Cute:Brown Block"
    glasses["cost"] = 8.15
    
    print(glasses["item"])
    print(glasses["cost"])
    
    table.insert(itemsToSell, glasses)
    print(itemsToSell[7]["item"])
    
    teddyBear = {}
    teddyBear["item"] = "Planet Cute:Character Princess Girl"
    teddyBear["cost"] = 3
    
    print(teddyBear["item"])
    print(teddyBear["cost"])
    
    table.insert(itemsToSell, teddyBear)
    print(itemsToSell[8]["item"])
    
    book = {}
    book["item"] = "Planet Cute:Chest Lid"
    book["cost"] = 5.25
    
    print(book["item"])
    print(book["cost"])
    
    table.insert(itemsToSell, book)
    print(itemsToSell[9]["item"])
    
    angel = {}
    angel["item"] = "Planet Cute:Dirt Block"
    angel["cost"] = 2.40
    
    print(angel["item"])
    print(angel["cost"])
    
    table.insert(itemsToSell, angel)
    print(itemsToSell[10]["item"])
    
    
    trophy = {}
    trophy["item"] = "Planet Cute:Door Tall Closed"
    trophy["cost"] = 10
    
    print(trophy["item"])
    print(trophy["cost"])
    
    table.insert(itemsToSell, trophy)
    print(itemsToSell[11]["item"])   
    
    firstThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+1]["item"], vec2(WIDTH/2+50, HEIGHT-200))
    firstThingTheyAreBuying.draggable = true
    secondThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+2]["item"], vec2(WIDTH/2+150, HEIGHT-200))
    secondThingTheyAreBuying.draggable = true
    thirdThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+3]["item"], vec2(WIDTH/2+250, HEIGHT-200))
    thirdThingTheyAreBuying.draggable = true
    fourthThingTheyAreBuying = SpriteObject(itemsToSell[(levelSelected-1)*4+4]["item"], vec2(WIDTH/2+350, HEIGHT-200))
    fourthThingTheyAreBuying.draggable = true
end

function MainGameScene:draw()
    -- Codea does not automatically call this method
    -- Do your drawing here
    background(40, 40, 50)
    sprite("SpaceCute:Background",WIDTH/2,HEIGHT/2,WIDTH,HEIGHT)
    
    fill(0, 0, 0, 255)
    fontSize(50)
    font("Courier")  
    pushStyle()
    
    text ("Level" .. levelSelected , vec2(WIDTH/2+150, HEIGHT/2+50))
    -- This sets a dark background color 
    
    -- athis displays desk,girl/boy and buttons
    sprite("Dropbox:desk", WIDTH-760, HEIGHT-500)
    
    
    popStyle()

     firstThingTheyAreBuying:draw()
     secondThingTheyAreBuying:draw()
     thirdThingTheyAreBuying:draw()
     fourthThingTheyAreBuying:draw()
     settingsButton:draw()    
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
    firstThingTheyAreBuying:touched(touch)
    secondThingTheyAreBuying:touched(touch)
    thirdThingTheyAreBuying:touched(touch)
    fourthThingTheyAreBuying:touched(touch)
    settingsButton:touched(touch) 
end
