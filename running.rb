require "ruby2d"

set width: 600, height: 400

mario = Image.new('mario.png', width: 64, height: 64)

mario_falling_speed = 0

on :key_down do |event|
    if event.key == 'w'
        mario_falling_speed = -10
    end
end

blue_square = Square.new(
  x: 0, y: 200,
  size: 600,
  color: 'blue'
)

update do
    # mario falls
    mario.y = mario.y + mario_falling_speed

    # stop when bottom left corner hits the blue square
    if blue_square.contains? mario.x, mario.y + mario.height
        mario_falling_speed = 0
        # and pop back up to the top of the square if necessary
        mario.y = blue_square.y - mario.height
    else
        mario_falling_speed = mario_falling_speed + 1 #gravity
    end
end




# gravity
# boundaries
# a floor?
# spawn obstacle
# collision detection
# resizable window?!

# first goal:
# create a floor of some sort
# when mario falls onto the floor, he stops
    # when mario hits a certain y value (where the floor is), he stops
    # do something different (??) when mario is 'include?'ed in the square - or with 'contains'

show


# Jean's good protips
# form hypotheses and test them.


# things we learned about
# z index and stacking order