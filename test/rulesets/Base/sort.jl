@testset "sort.jl" begin
    @testset "sort" begin
        a = rand(10)
        test_rrule(sort, a)
        test_rrule(sort, a; fkwargs=(;rev=true))
    end
    @testset "partialsort" begin
        a = rand(10)
        test_rrule(partialsort, a, 4 ⊢ nothing)
        test_rrule(partialsort, a, 3:5 ⊢ nothing)
        test_rrule(partialsort, a, 1:2:6 ⊢ nothing)

        test_rrule(partialsort, a, 4 ⊢ nothing, fkwargs=(;rev=true))
    end
end
