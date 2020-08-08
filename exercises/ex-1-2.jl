duration = "42 minutes 42 seconds"
seconds = 42 * 60 + 42
println(seconds)

kilometers = 10
conversion_factor = 1.61
miles = kilometers * conversion_factor
println(miles)

distance = "10 kilometers"
time = "37 minutes 48 seconds"
pace = (37 * 60 + 48) / (10 * 1.61)
pace_minute = pace ÷ 60
pace_second = pace % 60
println("$pace_minute minutes $pace_second seconds per mile")
speed = inv(pace) * 3600
println("$speed miles per hour")