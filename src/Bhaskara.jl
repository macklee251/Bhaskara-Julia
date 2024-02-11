module Bhaskara

export bhaskara
"""
    (r1, r2) = bhaskara(a, b, c)

Calcula as raizes de uma equação do segundo grau.
"""
function bhaskara(a, b, c)
    if a == 0
        throw(ArgumentError("o 'a' precisa ser diferente de zero"))
    end
    local delta = b^2 - 4*a*c
    local Sdelta = sqrt(Complex(delta))
    return (-b + Sdelta) / 2a, (-b - Sdelta) / 2a
end

end # module Bhaskara

