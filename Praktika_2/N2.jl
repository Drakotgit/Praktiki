include("N1.jl")
function fib(n :: Int)
    return (fastpow([0 1; 1 1],n)*[0 ; 1])[1,1]
end
