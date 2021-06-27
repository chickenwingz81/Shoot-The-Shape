function love.draw()
	love.graphics.setColor(1,0,0)
	love.graphics.circle("fill",player.x, player.y, player.width, player.height)
	

	

    

    love.graphics.setColor(0,1,0)
    love.graphics.rectangle("fill", 600, 200, 300,100)

    -- [Setting direction of bullet]

    for i,v in ipairs(bullet) do 
        love.graphics.setColor(0,2,0)
        love.graphics.circle("fill", bullet.x,bullet.y,bullet.height, bullet.width, bullet.speed)
    end

love.graphics.setColor(255,255,255)
    love.graphics.print(score, 0, 0)

end 

function love.load()
    
--[Setup Player]

player ={}
player.x= 300
player.y= 200
player.width= 50
player.height=50    

score = 0
end




--[Constructing the bullets]
bullet= {}
function drawingBullet()
  



 
    bullet.speed=100
    bullet.width = 1000
    bullet.height= 10
    bullet.x= 300
    bullet.y= 210
    return bullet
end

function love.update(dt)
      for i,v in ipairs(bullet) do
     v.x= v.x + v.speed *dt
 end
end

function love.keypressed(key) 
    if key == "s" then
        table.insert(bullet, drawingBullet())
    end

    if key== "s" then 
    score= score+1
end
end 
    



