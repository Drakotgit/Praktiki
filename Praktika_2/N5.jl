include("N4.jl")

function newton(r :: Function, x, e, num_max)
    dx = -r(x)
    k = 0
    while abs(dx) > e && k <= num_max
        x += dx
        k += 1
    end
    k > num_max && @warn("Требуемая точность не достигнута")
    return x
end
