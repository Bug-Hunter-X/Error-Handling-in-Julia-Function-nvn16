```julia
function myfunction(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0
  else
    throw(DomainError(x, "Input must be non-negative"))
  end
end

println(myfunction(2))

try
  println(myfunction(-2))
catch e
  println("Error: ", e)
end
```