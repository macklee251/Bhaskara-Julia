using Bhaskara, Test

function tests()
    @testset "Raizes reais" begin
        @test bhaskara(1, 0, -4) == (2.0, -2.0) 
        @test bhaskara(1, -5, 6) == (2.0, 3.0) 
        @test bhaskara(2, -10, 12) == (2.0, 3.0) 
        @test bhaskara(1, 1, 0) == (0.0, -1.0)
    end
end 

tests()