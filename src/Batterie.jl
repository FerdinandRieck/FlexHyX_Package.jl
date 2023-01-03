function Batterie(UL,UR,U_E,Q,iB,P)
    A, B, K1, K2, Q_max, R, U0, soc_min = P
    U_E = min(A,max(U_E,0))
    soc = Q/Q_max; soc = minimum(maximum(soc,soc_min),1.095);
    U_B = U0 + U_E - K1*ifxaorb(iB,1.0/soc,1.0/(1.1-soc))*iB - K2*(Q_max-Q)/soc;
    dy1 = U_B - R*iB - (UR-UL);  #-- Bat.spannung
    dy2 = iB*B*(ifxaorb(iB,-U_E,U_E-A))
    dy3 = -iB
    return [dy1, dy2, dy3]
end