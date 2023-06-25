include("N1.jl")

one(::Type{Matrix{T}}) where T = [1 0; 0 1]

function fib(n :: Int)
    return (fastpow([0 1; 1 1], n)*[0 ; 1])[1,1]
end
