radius = 5
sphere_volume = (4 / 3) * π * (radius^3)
println(sphere_volume)

cover_price = 24.95
discount = 0.40
shipping_initial_cost = 3
shipping_extra_cost = 0.75
number_copies = 60
wholesale_cost = (cover_price * number_copies) * (1 - discount) + shipping_initial_cost + shipping_extra_cost * (number_copies - 1)
println("final cost $wholesale_cost")

start_time = "6:52 AM"
easy_pace = "8 minutes 15 seconds per mile"
tempo = "7 minutes 12 seconds per mile"
step_1_easy_1_mile = 8 * 60 + 15
step_2_easy_3_mile = 3 * (7 * 60 + 12)
step_3_easy_1_mile = 8 * 60 + 15
total_seconds = step_1_easy_1_mile + step_2_easy_3_mile + step_3_easy_1_mile
final_time = 6 * 3600 + 52 * 60 + total_seconds
end_time_hour = final_time ÷ 3600
end_time_minute = (final_time % 3600) ÷ 60
end_time_second = final_time % 60
println("I get breakfast at $end_time_hour hour, $end_time_minute minutes and $end_time_second seconds.")
