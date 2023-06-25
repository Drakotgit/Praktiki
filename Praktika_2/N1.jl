import Base: one

function fastpow( a :: T, pow :: Int) where T
    k :: T, t :: T, p :: Int = a, one(T), pow
    while !iszero(p)
        if iseven(p)
            k*= k
            p÷=2
        else
            t*=k
            p-=1
        end
    end
    return t
end
