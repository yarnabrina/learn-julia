function compare(x, y)
    return sign(x - y)
end

function distance(x₁, y₁, x₂, y₂)
    dx = x₂ - x₁
    dy = y₂ - y₁
    distance² = dx^2 + dy^2
    return sqrt(distance²)
end

function get_hypotenuse(base, height)
    hypotenuse² = base^2 + height^2
    return sqrt(hypotenuse²)
end

function is_between(x, y, z)
    return x ≤ y ≤ z
end

function ackermann_peter(m, n)
    if m < 0 || n < 0
        error("defined for non-negative integers")
    elseif m == 0
        return n + 1
    elseif n == 0
        return ackermann_peter(m - 1, 1)
    else
        return ackermann_peter(m - 1, ackermann_peter(m, n - 1))
    end
end

println("Ackermann-Péter at (3, 4): ", ackermann_peter(3, 4))

function middle(word)
    start = nextind(word, firstindex(word))
    finish = prevind(word, lastindex(word))
    return word[start:finish]
end

function is_palindrome(word)
    if length(word) ≤ 1
        return true
    elseif first(word) != last(word)
        return false
    else
        return is_palindrome(middle(word))
    end
end

function is_power(a, b)
    if a % b != 0
        return false
    else
        return is_power(a / b, b)
    end
end

function get_gcd(a, b)
    if a == 0 == b
        error("GCD of two zeroes is undefined")
    elseif b == 0
        return a
    else
        return gcd(b, a % b)
    end
end
