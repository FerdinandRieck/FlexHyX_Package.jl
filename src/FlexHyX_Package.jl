module FlexHyX_Package
    using LinearAlgebra, Plots, NLsolve, DifferentialEquations

    export solveNetzwerk

    include("solve_Netzwerk.jl")
end
