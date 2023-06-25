include("N3.jl")

function diaphant_solve(a, b, c)
    if gcdx(a, b, c)[1]==1
        return (gcdx(a, b, c)[2], gcdx(a, b, c)[3])
    else
        return Nothing
    end
end
