function dae!(dy,y,p,t) 
    UL=y[1]; UR=y[2]; iV=y[3]; iB=y[4]; U_E=y[5]; Q=y[6];
    dy[1] = UL; 
    dy[2] = iB-iV; 
    dy[3] = iV*(UR-UL)-leistung(t)
    dy[4:6] = Batterie!(dy[4:6],UL,UR,iB,p,U_E,Q)
end

function f_aw!(dy_alg,y_alg,ind_alg,y,P)
    dy = 0*y
    y[ind_alg] = y_alg;
    dae!(dy,y,P,0.0)
    for i=1:length(y_alg) #-- keine Ahnung, warum das nicht mit dy_alg=dy[ind_alg] funktioniert
        dy_alg[i] = dy[ind_alg[i]];
    end
end