-- ICS2O-2016-Group3

-- Created by: Vega (Codea Talk)
-- Created on: May 2012
-- Created for: ICS2O
-- This is the project for Group #3-2016

ShowDialog = class()

function ShowDialog:init(text,location,width,height)
    self.minimumFontSize = 6 
    --Set the above to the lowest size you want text automatically scaled down to
    self.text = text
    self.location = location
    self.width = width
    self.height = height
    self.visible = false
    self.fontSize = 20
    self.font = "Georgia"
end

function ShowDialog:draw()
    if self.visible == true then
        sprite(self.image, self.location.x, self.location.y)
    end
end

function ShowDialog:touched(touch)
    
end

function ShowDialog:setFont(newfont,size)
    self.font = newfont;
    self.fontSize = size;
end

function ShowDialog:changeText(text)
    self.text = text
end

function ShowDialog:move(location)
    self.location = location
end

function ShowDialog:resize(width, height)
    self.width = width
    self.height = height
end

function ShowDialog:hide()
    self.visible = false
end

function ShowDialog:show()
    --Now we have to create the image
    local textWidth, textHeight
    self.image = image(self.width, self.height)
    setContext(self.image)
    sprite("Planet Cute:SpeechBubble",self.width/2,self.height/1.25,self.width,self.height*1.6)
    font(self.font)
    fontSize(self.fontSize)
    textWrapWidth(self.width * .8)
    noStroke()
    fill(0, 0, 0, 255)
    local textFits = false
    while textFits == false do
        textWidth, textHeight = textSize(self.text)
        if textHeight > self.height * .8 then
            local stringLength = string.len(self.text)
            if self.fontSize >= self.minimumFontSize + 1 then
                self.fontSize = self.fontSize - 1
                fontSize(self.fontSize)
            elseif stringLength > 10 then
                self.text = string.sub(self.text,1,stringLength - 10)
            else
                self.text = "error, box too small!"
                textFits = true -- not really, but what else can we do?
            end
        else textFits = true
        end
    end
    text(self.text, self.width * .525, self.height * .525)
    setContext()
    self.visible = true
end
