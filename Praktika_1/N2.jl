include("N1.jl")

function gcdx(a, b, c)
    x1, x2, y1, y2 = c, 0, 0, c
    while b>0
        k=div(a, b)
        a, b = b, a%b
        x1, x2 = x2, x1-x2*k
        y1, y2, = y2, y1-y2*k
    end
    return a, x1, y1
end
