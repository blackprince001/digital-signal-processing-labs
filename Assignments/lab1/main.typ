#import "@preview/red-agora:0.1.1": project

#show: project.with(
  title: "Lab Exercise: Manipulating Sinusoids with MATLAB",
  subtitle: "Digital Signal Processing Lab Report",
  authors: (
    "Appiah Boadu Prince Kwabena - 3024420",
  ),
  school-logo: image("image.png"),
  mentors: (
  ),
  jury: (
  ),
  branch: "Digital Signal Processing",
  academic-year: "2023-2024",
  footer-text: "KNUST - Computer Engineering",
)

= Problem Statement

== Lab Exercise <ques-3>

Write a MATLAB script file to do steps (a) through (d) below. Include a listing of the script file with your report.

(a) Generate a time vector (tt) to cover a range of t that will exhibit approximately two cycles of the *4000 Hz* sinusoids defined in the next part, part (b). Use a definition for tt similar to part 2.2(d). 

If we use T to denote the period of the sinusoids, define the starting time of the vector tt to be equal to $-T$ , and the ending time as $+T$ . Then the two cycles will include $t = 0$. Finally, make sure that you have at least 25 samples per period of the sinusoidal wave. In other words, when you use the colon operator to define the time vector, make the increment small enough to generate 25 samples per period.

(b) Generate two 4000 Hz sinusoids with arbitrary amplitude and time-shift.

$ x_1(t) = A_1 cos(2 pi (4000)(t - t_(m_1) )) $
$ x_2(t) = A_2 cos(2 pi (4000)(t - t_(m_2) )) $

Select the value of the amplitudes and time-shifts as follows: Let A1 be equal to your age and set $A_2 = 1.2A_1$. For the time-shifts, set $t_(m_1) = (37.2/M)T$ and $t_(m_2) = -(41.3/D)T$ where D and M are the day and month of your birthday, and T is the period.

Make a plot of both signals over the range of $-T ≤ t ≤ T$ . For your final printed output in part (d) below, use `subplot(3,1,1)` and `subplot(3,1,2)` to make a three-panel figure that puts both of these plots in the same figure window. See help subplot.


(c) Create a third sinusoid as the sum: $x_3(t) = x_1(t) + x_2(t)$. In MATLAB this amounts to summing the vectors that hold the values of each sinusoid. 

Make a plot of $x_3(t)$ over the same range of time as used in the plots of part (b). Include this as the third panel in the plot by using `subplot(3,1,3)`.

(d) Before printing the three plots, put a title on each subplot, and include your name in one of the titles. See help title, help print and help orient, especially orient tall.


== Theoretical Calculations

Remember that the phase of a sinusoid can be calculated after measuring the time location of a positive peak, 2 if we know the frequency.

(a) Make measurements of the “time-location of a positive peak” and the amplitude from the plots of $x_1(t)$ and $x_2(t)$,and write those values for $A_i$ and $t_(m_i)$ directly on the plots.

Then calculate (byhand) the phases of the two signals, $x_1(t)$ and $x_2(t)$, by converting each time-shift $t_(m_i)$ to phase. Write the calculated phases $phi$ directly on the plots.

Note: when doing computations, express phase angles in radians, not degrees!

(b) Measure the amplitude A3 and time-shift $t_(m_3)$ of $x_3(t)$ directly from the plot and then calculate the phase $phi$ by hand. 

Write these values directly on the plot to show how the amplitude and time-shift were measured, and how the phase was calculated.

(c) Now use the phasor addition theorem. Carry out a phasor addition of complex amplitudes for $x_1(t)$ and $x_2(t)$ to determine the complex amplitude for $x_3(t)$. 

Use the complex amplitude for $x_3(t)$ to verify that your previous calculations of $A_3$ and $phi_3$ were correct.

== Complex Amplitude

Write one line of MATLAB code that will generate values of the sinusoid $x_1(t)$ above by using the complex-amplitude representation

$$$ x_1(t) = Re {X e^(j omega t)} $$$

Use appropriate constants for $X$ and $omega$.

= Solution

== Source Program for Section 3

Solution for @ques-3
```matlab
Tp = 1/4000;
N_samples = 50;

tt = linspace(-Tp, Tp, N_samples);

Age = 21;
Month = 7;
Day = 23;

Amp1 = Age;
Amp2 = 1.2 * Amp1;

tm1 = (37.2 / Month) * Tp;
tm2 = -(41.3 / Day) * Tp;

x1 = Amp1 * cos(2 * pi * 4000 * (tt - tm1));
x2 = Amp2 * cos(2 * pi * 4000 * (tt - tm2));

x3 = x1 + x2

figure();

subplot(3, 1, 1);
plot(x1, tt);
xlabel("X1 Sinusoid");
ylabel("tt range");
title("X1 generated Signal");

subplot(3, 1, 2);
plot(x2, tt);
xlabel("X1 Sinusoid")
ylabel("tt range");
title("X2 generated Signal");

subplot(3, 1, 3);
plot(x3, tt);
xlabel("X1 Sinusoid")
ylabel("tt range");
title("X3 generated Signal");

orient(gcf, "tall");

saveas(gcf, "subplots_tall.png");

figure(gcf);
```

=== Solution for Section 3.1



=== Graphs and Results

#figure(caption: "Generated Subplots for the Signals", image("subplots_tall.png"))

== Source Code for Section 3.2

```matlab
x1 = Amp1 * exp(i * 8000 * pi * (tt - tm1))
```

== Conclusion