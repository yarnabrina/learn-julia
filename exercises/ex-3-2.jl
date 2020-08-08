function justify(str, justify_amount, justify_side="center")
    str_length = length(str)
    shift_amount = justify_amount - str_length

    if justify_side == "left"
        justified_str = str * (" "^justify_amount)
    elseif justify_side == "right"
        justified_str = (" "^justify_amount) * str
    else
        justified_str = (" "^(justify_amount ÷ 2)) * str * (" "^(justify_amount ÷ 2))
    end

    return justified_str
end

left_justified_monty = justify("monty", 30, "left")
right_justified_monty = justify("monty", 70, "right")
center_justified_monty = justify("monty", 50)

println("start $left_justified_monty end")
println("start $right_justified_monty end")
println("start $center_justified_monty end")
