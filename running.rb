require "ruby2d"

set width: 600, height: 400

mario = Image.new('mario.png', width: 64, height: 64)

mario_falling_speed = 0
mario_walking_speed = 0

on :key_down do |event|
    if event.key == 'w'
        mario_falling_speed = -10
    end
    if event.key == 'd'
        mario_walking_speed += 1
    end
    if event.key == 'a'
        mario_walking_speed -= 1
    end
end

blue_square = Square.new(
  x: 0, y: 200,
  size: 600,
  color: 'blue'
)

update do
    # mario left/right
    mario.x = mario.x + mario_walking_speed

    # mario falls
    # would he land with his feet below the square's top? Then land on it
    if blue_square.y < (mario.y + mario_falling_speed + mario.height)
        mario_falling_speed = 0
        mario.y = blue_square.y - mario.height
    else
        # keep falling
        mario.y = mario.y + mario_falling_speed
        mario_falling_speed = mario_falling_speed + 1 #gravity
    end
end




# gravity
# boundaries
# spawn obstacle
# collision detection
# resizable window?!
# moving left-right
# floor
    # make it so all blue squares stop mario
    # what if he runs into an object from the side?

# first goal:
# create a floor of some sort
# when mario falls onto the floor, he stops
    # when mario hits a certain y value (where the floor is), he stops
    # do something different (??) when mario is 'include?'ed in the square - or with 'contains'
    # make it so all blue squares stop mario
    # what if he runs into an object from the side?

# next goal: move left/right
# when you press d, make him start sliding slowly right
show


# Jean's good protips
# form hypotheses and test them.


# things we learned about
# z index and stacking order
# git (just a tiny little bit)
# running using console - ruby2d console running.rb
# asking an object for its methods - mario.methods