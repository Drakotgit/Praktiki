function fastpow( a :: T, pow :: Int) where T
    k :: T, t :: T, p :: Int = a, 1, pow
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
