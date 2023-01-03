function plotsol(sol)
    p1 = plot(sol.t/3600,sol'[:,[1,2,5]], linewidth = 2, xlabel =
    "Zeit /h", ylabel = "V", title = "Spannungen", label =
    ["U0" "U1" "uB"],legend=:inside)
    p2 = plot(sol.t/3600,sol'[:,[3,4]], linewidth = 2, xlabel =
    "Zeit /h", ylabel = "A", title = "Ströme", label = ["iV" "iB"],legend=:bottom)
    p3 = plot(sol.t/3600,sol'[:,6]/Q_max, linewidth = 2, xlabel =
    "Zeit /h", ylabel = "soc", title = "Ladezustand", label = "soc",legend=:topleft)
    p = plot(p1,p2,p3)
end