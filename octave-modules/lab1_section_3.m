f = 4000;
Tp = 1/f;
N_samples = 50;

tt = linspace(-Tp, Tp, N_samples);

Age = 21;
Month = 7;
Day = 23;

Amp1 = Age;
Amp2 = 1.2 * Amp1;

tm1 = (37.2 / Month) * Tp;
tm2 = -(41.3 / Day) * Tp;

x1 = Amp1 * cos(2 * pi * f * (tt - tm1));
x2 = Amp2 * cos(2 * pi * f * (tt - tm2));

x3 = x1 + x2

figure();

subplot(3, 1, 1);
plot(tt, x1);
xlabel("X1 Sinusoid");
ylabel("tt range");
title("X1 generated Signal");

subplot(3, 1, 2);
plot(tt, x2);
xlabel("X1 Sinusoid")
ylabel("tt range");
title("X2 generated Signal");

subplot(3, 1, 3);
plot(tt, x3);
xlabel("X1 Sinusoid")
ylabel("tt range");
title("X3 generated Signal");

orient(gcf, "tall");

saveas(gcf, "subplots_tall.png");

figure(gcf);

% complex exponential for 3.2

x1 = Amp1 * exp(i * 8000 * pi * (tt - tm1))