%waviness
falistosc = 1;

%frequency characteristic
h2 = Czebyszew_filter(2,falistosc);
h3 = Czebyszew_filter(3,falistosc);
h4 = Czebyszew_filter(4,falistosc);
h5 = Czebyszew_filter(5,falistosc);
h6 = Czebyszew_filter(6,falistosc);
h7 = Czebyszew_filter(7,falistosc);
h8 = Czebyszew_filter(8,falistosc);

figure(1)
bode(h2);
hold on
bode(h3);
hold on
bode(h4);
hold on
bode(h5);
hold on
bode(h6);
hold on
bode(h7);
hold on
bode(h8);
legend('n=2','n=3','n=4','n=5','n=6','n=7','n=8');

%poles
figure(2);
pzmap(h2);
pzmap(h3);
pzmap(h4);
pzmap(h5);
pzmap(h6);
pzmap(h7);
pzmap(h8);


%step characteristics
figure(3)
step(h2)
hold on
step(h3)
hold on
step(h4)
hold on
step(h5)
hold on
step(h6)
hold on
step(h7)
hold on
step(h8)
legend('n=2','n=3','n=4','n=5','n=6','n=7','n=8');
    

    
