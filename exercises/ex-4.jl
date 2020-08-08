using Luxor

Drawing(400, 400, "local_files\\square.png")
background("white")

sq = Turtle()
Pencolor(sq, 0, 0, 0)

origin()
for i in 1:4
    Turn(sq, 90)
    Forward(sq, 100)
end

finish()

function poly_line(turtle, number_sides, side_length, angle)
    for n in 1:number_sides
        Forward(turtle, side_length)
        Turn(turtle, angle)
    end
end

function regular_polygon(turtle, number_sides, side_length)
    angle = (360 / number_sides)
    poly_line(turtle, number_sides, side_length, angle)
end

Drawing(400, 400, "local_files\\octagon.png")
background("white")

pg = Turtle()
Pencolor(pg, 0, 0, 0)

origin()
regular_polygon(pg, 8, 64)

finish()

function general_arc(turtle, radius, angle)
    circumference = 2 * π * radius
    arc_length = (circumference / 360) * angle
    number_sides = max(3, arc_length ÷ 2)
    side_length = arc_length / number_sides
    side_angle = angle / number_sides
    poly_line(turtle, number_sides, side_length, side_angle)
end

Drawing(400, 400, "local_files\\two_fifty_six.png")
background("white")

arc = Turtle()
Pencolor(arc, 0, 0, 0)

origin()
general_arc(arc, 16, 256)

finish()
