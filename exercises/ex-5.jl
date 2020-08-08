seconds_from_epoch = time()
whole_minutes_from_epoch = seconds_from_epoch ÷ 60
whole_hours_from_epoch = whole_minutes_from_epoch ÷ 60
whole_days_from_epoch = whole_hours_from_epoch ÷ 24

println("Since Epoch:
$whole_days_from_epoch days
$whole_hours_from_epoch hours
$whole_minutes_from_epoch minutes
$seconds_from_epoch seconds")

function check_Fermat(a, b, c, n)
    if n > 2
        if a^n + b^n == c^n
            println("Fermat was wrong!")
        else
            println("Fermat was right")
        end
    end
end

function interactive_Fermat()
    println("Enter a:")
    a = readline()
    a = parse(UInt128, a)

    println("Enter b:")
    b = readline()
    b = parse(UInt128, b)

    println("Enter c:")
    c = readline()
    c = parse(UInt128, c)

    println("Enter n:")
    n = readline()
    n = parse(UInt128, n)

    if n > 2 && a > 0 && b > 0 && c > 0
        check_Fermat(a, b, c, n)
    end
end

function is_triangle(a, b, c)
    if (a + b ≤ c) || (b + c ≤ a) || (c + a ≤ b)
        println("Triangle impossible")
    else
        println("Triangle possible")
    end
end

function interactive_triangle()
    println("Enter a:")
    a = readline()
    a = parse(Float64, a)

    println("Enter b:")
    b = readline()
    b = parse(Float64, b)

    println("Enter c:")
    c = readline()
    c = parse(Float64, c)

    if min(a, b, c) > 0
        is_triangle(a, b, c)
    end
end

"""
recurse(n, s)

Prints s plus the sum of first n positive integers,
if n is a positive integer. Otherwise, it will lead
to infinite recursion.
"""
function recurse(n, s)
    if n == 0
        println(s)
    else
        recurse(n-1, n+s)
    end
end
