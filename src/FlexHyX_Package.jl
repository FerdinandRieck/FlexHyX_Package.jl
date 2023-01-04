module FlexHyX_Package
    using LinearAlgebra, Plots, NLsolve, DifferentialEquations

    include("solve_Netzwerk.jl")

    export solveNetzwerk
end
