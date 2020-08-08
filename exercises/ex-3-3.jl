function dotwice(func_name, func_argument)
    func_name(func_argument)
    func_name(func_argument)
end

function printtwice(bruce)
    println(bruce)
    println(bruce)
end

println("using dotwice")
dotwice(printtwice, "spam")

function dofour(func_name, func_argument)
    dotwice(func_name, func_argument)
    dotwice(func_name, func_argument)
end

println("using dofour")
dofour(printtwice, "spam")

function domulti(func_name, func_argument, times)
    for i in 1:times
        func_name(func_argument)
    end
end

println("using domulti")
domulti(printtwice, "spam", 5)