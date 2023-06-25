function gcd(a, b)
    while !(b == 0)
        a, b = b, a%b
    end
    return a
end

function gcdx(a, b, c)
    x1, x2, y1, y2 = c, 0, 0, c
    #println(a, " ", b)
    #println(x1, " ", x2)
    #println(y1 " ", y2)
    #println()
    while b>0
        k=div(a, b)
        a, b = b, a%b
        x1, x2 = x2, x1-x2*k
        y1, y2, = y2, y1-y2*k
        #println(a, " ", b)
        #println(x1, " ", x2)
        #println(y1 " ", y2)
        #println()
    end
    return a, x1, y1
end

function invmod(a, m)
    if gcdx(a, m, 1)[1]==1
        return(gcdx(a, m, 1)[2])
    else
        return Nothing
    end
end

function diaphant_solve(a, b, c)
    if gcdx(a, b, c)[1]==1
        return (gcdx(a, b, c)[2], gcdx(a, b, c)[3])
    else
        return Nothing
    end
end
