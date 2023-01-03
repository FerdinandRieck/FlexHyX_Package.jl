function fstep(t,t0,dauer)
    #-- atanh(0.999) = 3.8002, atanh(0.995) = 2.9945
     s = 2.9945/dauer;
     f = (tanh(s*(t-t0))+1.0)/2.0; return f
end

function minimum(x,y)
    #-- x Vektor, y Skalar
     z = -maximum(-x,-y); return z
end
    
function maximum(x,y)
    #-- x Vektor, y Skalar
      z = maxx0(x-y)+y; return z
end
    
function maxx0(x)
    #-- max(x,0)
     y = x.*fstep(x,0*1.0e-5/2,1.0e-5); return y
    # y = max(x,0.0); return y
end
    
function ifxaorb(x,a,b)
    #-- x > 0 -> a; x < 0 -> b
     y = b-(b-a)*fstep(x,0,1.0e-4); return y
end