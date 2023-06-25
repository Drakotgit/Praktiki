include("N1.jl")

function _CombSort(arr :: AbstractArray{T}) where T
    step :: Int = length(arr)-1
    swaps :: Bool = true
    while step>1 || swaps
        i :: Int = 1
        swaps = false
        while i+step<=length(arr)
            @inbounds if arr[i+step]<arr[i]
                @inbounds arr[i], arr[i+step] = arr[i+step], arr[i]
                swaps = true
            end
            i+=1
        end
        if step>1
            step=floor(Int,step/1.24733)
        end
    end
    return arr
end
