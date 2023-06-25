function meanstd(aaa)
  T = eltype(aaa)
  n = 0; s¹ = zero(T); s² = zero(T)
  for a ∈ aaa
    n += 1; s¹ .+= a; s² += a*a
  end
  mean = s¹ ./ n
  return mean, sqrt(s²/n - mean*mean)
end
