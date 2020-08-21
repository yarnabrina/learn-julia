function recursive_printn(s, n)
    if n ≤ 0
        return
    end
    println(s)
    recursive_printn(s, n - 1)
end

function iterative_printn(s, n)
    while n > 0
        println(s)
        n -= 1
    end
end

function approximate_square_root(value)
    get_next_estimate(initial_estimate) = (initial_estimate + (value / initial_estimate)) / 2

    initial_estimate = value / 2
    next_estimate = get_next_estimate(initial_estimate)

    while abs(next_estimate - initial_estimate) > 1e-5
        initial_estimate = next_estimate
        next_estimate = get_next_estimate(initial_estimate)
    end

    return next_estimate
end

function test_approximation()
    get_alignment_length(required_length, required_value) = required_length - length(string(required_value))

    println("value ", " approximated root ", " actual root ", " approximation error")
    println("-"^5, "  ", "-"^17, "  ", "-"^11, "  ", "-"^19)

    for x in 1:10
        print(x, " "^get_alignment_length(7, x))

        approximated_root = approximate_square_root(x)
        print(round(approximated_root; digits=8), " "^get_alignment_length(19, round(approximated_root; digits=8)))

        actual_root = sqrt(x)
        print(round(actual_root; digits=8), " "^get_alignment_length(13, round(actual_root; digits=8)))

        approximation_error = abs(actual_root - approximated_root)
        println(round(approximation_error; digits=8))
    end
end

test_approximation()

function eval_loop()
    expression = nothing  # to avoid UndefVarError

    while true
        print("Please provide and expression, or type done: ")
        user_input = readline()

        if user_input == "done"
            println("Last expression result: ", expression)
            break
        end

        expression = Meta.parse(user_input)
        println(eval(expression))
    end
end

function estimate_pi_value(margin_of_error=1e-15)
    infinite_series_estimate = 0
    infinite_series_term_index = 0

    while true
        infinite_series_term_numerator = factorial(4 * infinite_series_term_index) * (1103 + 26390 * infinite_series_term_index)
        infinite_series_term_denominator = (factorial(infinite_series_term_index)^4) *  (396^(4 * infinite_series_term_index))
        infinite_series_term = infinite_series_term_numerator / infinite_series_term_denominator
        infinite_series_estimate += infinite_series_term

        if infinite_series_term < margin_of_error
            break
        end

        infinite_series_term_index += 1
    end

    inv_pi_estimate = 2 * sqrt(2) / 9801 * infinite_series_estimate

    return inv(inv_pi_estimate)
end

println("π approximation:", estimate_pi_value())
