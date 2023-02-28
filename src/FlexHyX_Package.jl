module FlexHyX_Package
    using LinearAlgebra, Plots, NLsolve, DifferentialEquations

    include("Batterie.jl")
    include("DGL.jl")
    include("Glättung.jl")
    include("Leistung.jl")
    include("solve_Netzwerk.jl")
    include("plot_sol.jl")

    export solveNetzwerk
    export plotsol

    sol = solveNetzwerk()
    plotsol(sol)
end
