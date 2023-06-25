function bisection( f :: Function, a :: T, b :: T, e :: T) where T <: Float64
    @assert f(a)*f(b)<0
    @assert a<b
    while b-a > e
        t :: T = (a+b)/2
        if f(t)==0
            return t
        end
        if f(t)*f(a)<0
            b = t
        else
            a = t
        end
    end
    return (a + b)/2
end
