include("Batterie.jl")
include("DGL.jl")
include("Glättung.jl")
include("Leistung.jl")
include("Params.jl")
include("plot_sol.jl")

function solveNetzwerk()
    p = A, B, K1, K2, Q_max, R, U0, soc_min
    y0 = [UL;UR;iV;iB;U_E;Q]
    M = zeros(6,6); M[5,5] = 1; M[6,6] = 1;

    ind_alg = findall(x->x==0,M[diagind(M)]);
    dy = 0*y0; y_alg = copy(y0[ind_alg])
    dae!(dy,y0,p,0.0);
    g!(dy_alg,y_alg) = f_aw!(dy_alg,y_alg,ind_alg,y0,p)
    res = nlsolve(g!,y_alg); y0 = [res.zero; 0.0; 0.9*Q_max]
    println(y0)

    tspan = (0.0,48*60*60.0)
    f = ODEFunction(dae!, mass_matrix = M);
    prob = ODEProblem(f,y0,tspan, p)
    sol = solve(prob)
    #plotsol(sol)
end
