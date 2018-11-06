function out=Czebyszew_filter(level, waviness)
   E = sqrt(10^(waviness/10)-1);
   u = asinh(1/E)/level;
   omegaC = 1/cosh(1/level*acosh(sqrt((2*E^2+1)/E^2)));
   if mod(level,2)==0 %parzyste
       
       k=level/2;
       h=1;
       for i=1:k
           
           alfa = (2*i-1)*pi/(2*level);
           Bk = 1/(cosh(u)^2-cos(alfa)^2);
           Ak = 2*Bk*sinh(u)*cos(alfa);
         
           aK = Ak/omegaC;
           bK = Bk/omegaC^2;
        
           h=h*tf(1,[bK aK 1]);
       end
       out=h;
   elseif mod(level,2)==1 %nieparzyste
       
       k=(level+1)/2;
       h=tf(1,[1/sinh(u) 1]);
       for i=2:k
           alfa = (i-1)*pi/level;
           Bk = 1/(cosh(u)^2-cos(alfa)^2);
           Ak = 2*Bk*sinh(u)*cos(alfa);
        
           aK = Ak/omegaC;
           bK = Bk/omegaC^2;
        
           h=h*tf(1,[bK aK 1]);
       end
       out=h;
   end
end
