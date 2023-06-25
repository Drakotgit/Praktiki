include("N2.jl")

function invmod(a, m)
    if gcdx(a, m, 1)[1]==1
        return(gcdx(a, m, 1)[2])
    else
        return Nothing
    end
end
