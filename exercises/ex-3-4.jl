function print_cell_row(width, separator, fill)
    print(separator, " ")
    print((fill * " ")^width)
end

function print_grid_row(number_columns, width, separator, fill)
    for i in 1:number_columns
        print_cell_row(width, separator, fill)
    end

    println(separator)
end

function print_grid(number_rows, number_columns, height=4, width=4, grid_separator="+", grid_fill="-", cell_separator="|", cell_fill=" ")
    print_grid_row(number_columns, width, grid_separator, grid_fill)

    for i in 1:number_rows
        for j in 1:height
            print_grid_row(number_columns, width, cell_separator, cell_fill)
        end

        print_grid_row(number_columns, width, grid_separator, grid_fill)
    end
end

println("two by two grid")
print_grid(2, 2)

println("four by four grid")
print_grid(4, 4)