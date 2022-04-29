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

    # would he land inside the square? Then land on it
    if blue_square.contains? mario.x, mario.y + mario_falling_speed + mario.height
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
# a floor?
# spawn obstacle
# collision detection
# resizable window?!
# moving left-right

# first goal:
# create a floor of some sort
# when mario falls onto the floor, he stops
    # when mario hits a certain y value (where the floor is), he stops
    # do something different (??) when mario is 'include?'ed in the square - or with 'contains'
    # make it so all blue squares stop mario
    # what if he runs into an object from the side?

show


# Jean's good protips
# form hypotheses and test them.


# things we learned about
# z index and stacking order