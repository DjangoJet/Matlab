function out=Butterworth_filter(level)
   
   if rem(level,2)==1
       k=(level+1)/2;
       h=tf(1,[1 1]);
       for i=2:k
          h=h*tf(1,[1 2*cos((i-1)/level*pi) 1]);
       end
       out=h;
   elseif rem(level,2)==0
       k=level/2;
       h=1;
       for i=1:k
           h=h*tf(1,[1 2*cos((2*i-1)/(2*level)*pi) 1]);
       end
       out=h;
   end
end
