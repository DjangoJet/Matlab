%frequency characteristic
h2 = Butterworth_filter(2);
h3 = Butterworth_filter(3);
h4 = Butterworth_filter(4);
h5 = Butterworth_filter(5);
h6 = Butterworth_filter(6);
h7 = Butterworth_filter(7);
h8 = Butterworth_filter(8);

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