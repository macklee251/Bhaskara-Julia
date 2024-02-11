using Bhaskara, Test

function tests()
    @testset "Raizes reais" begin
        @test bhaskara(1, 0, -4) == (2.0, -2.0) 
        @test bhaskara(1, -5, 6) == (3.0, 2.0) 
    end

    @testset "Raizes duplas" begin
        @test bhaskara(1, -4, 4) == (2.0, 2.0) 
        @test bhaskara(1, -6, 9) == (3.0, 3.0) 
    end 

    @testset "a=0" begin
        @test_throws ArgumentError bhaskara(0, 1, 1)  # Estamos dizendo que ArgumentError tem que ser o resultado quando chamarmos bhaskara com a=0
    end
end 

tests()