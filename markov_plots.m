clear;
bufferSize = [4 8 16 32 64 128];

% vortex table size 128
x = 0:1:128;

vortex_IPC128 = [1.4111 1.4121 1.4133 1.4156 1.4192 1.4272];
vortex_IPC64 = [1.4108 1.4119 1.4134 1.4158 1.4201 1.4261];
vortex_IPC32 = [1.4111 1.4121 1.4138 1.4169 1.4215 1.4236];
vortex_IPC16 = [1.411 1.412 1.4136 1.4151 1.4194 1.4188];
vortex_IPC8 = [1.4109 1.4114 1.4125 1.4135 1.4183 1.4203];

vortex_defaultIPC = 1.4103;
v = ones(length(x))*vortex_defaultIPC;
figure(1);
plot(bufferSize, vortex_IPC128, 'k-', ...
    bufferSize, vortex_IPC64, 'c-', ...
    bufferSize, vortex_IPC32, 'm-', ...
    bufferSize, vortex_IPC16, 'r-', ...
    bufferSize, vortex_IPC8, 'g-', ...
    x, v, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

gcc_IPC128 = [1.2436 1.2437 1.2438 1.2441 1.2445 1.2453];
gcc_IPC64 = [1.2436 1.2437 1.2438 1.244 1.2443 1.2449];
gcc_IPC32 = [1.2436 1.2436 1.2437 1.2439 1.2441 1.2446];
gcc_IPC16 = [1.2436 1.2436 1.2437 1.2438 1.244 1.2444];
gcc_IPC8 = [1.2436 1.2436 1.2436 1.2437 1.2439 1.2443];

gcc_defaultIPC = 1.2435;
g = ones(length(x))*gcc_defaultIPC;

figure(2);
plot(bufferSize, gcc_IPC128, 'k-', ...
    bufferSize, gcc_IPC64, 'c-', ...
    bufferSize, gcc_IPC32, 'm-', ...
    bufferSize, gcc_IPC16, 'r-', ...
    bufferSize, gcc_IPC8, 'g-', ...
    x, g, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

crafty_IPC128 = [1.2575 1.2579 1.2587 1.261 1.2648 1.2689];
crafty_IPC64 = [1.2566 1.2573 1.2587 1.2614 1.265 1.269];
crafty_IPC32 = [1.2562 1.2571 1.2589 1.2615 1.2651 1.269];
crafty_IPC16 = [1.256 1.257 1.2588 1.2614 1.2652 1.2685];
crafty_IPC8 = [1.2558 1.2568 1.2584 1.2611 1.2644 1.2674];

crafty_defaultIPC = 1.2551;
g = ones(length(x))*crafty_defaultIPC;

figure(3);
plot(bufferSize, crafty_IPC128, 'k-', ...
    bufferSize, crafty_IPC64, 'c-', ...
    bufferSize, crafty_IPC32, 'm-', ...
    bufferSize, crafty_IPC16, 'r-', ...
    bufferSize, crafty_IPC8, 'g-', ...
    x, g, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

mgrid_IPC128 = [1.6251 1.6251 1.6251 1.6251 1.625 1.6251];
mgrid_IPC64 = [1.6251 1.6251 1.6251 1.6251 1.625 1.6251];
mgrid_IPC32 = [1.625 1.625 1.625 1.625 1.625 1.625];
mgrid_IPC16 = [1.6248 1.6248 1.6248 1.6248 1.6248 1.6248];
mgrid_IPC8 = [1.6248 1.6248 1.6248 1.6248 1.6248 1.6248];

mgrid_defaultIPC = 1.6248;
g = ones(length(x))*mgrid_defaultIPC;

figure(4);
plot(bufferSize, mgrid_IPC128, 'k-', ...
    bufferSize, mgrid_IPC64, 'c-', ...
    bufferSize, mgrid_IPC32, 'm-', ...
    bufferSize, mgrid_IPC16, 'r-', ...
    bufferSize, mgrid_IPC8, 'g-', ...
    x, g, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

twolf_IPC128 = [1.5068 1.5068 1.5068 1.5069 1.5074 1.5087];
twolf_IPC64 = [1.5068 1.5068 1.5068 1.5069 1.5072 1.5081];
twolf_IPC32 = [1.5067 1.5068 1.5068 1.5068 1.507 1.5077];
twolf_IPC16 = [1.5067 1.5068 1.5068 1.5068 1.507 1.5077];
twolf_IPC8 = [1.5067 1.5068 1.5068 1.5068 1.507 1.5076];

twolf_defaultIPC = 1.4103;
g = ones(length(x))*twolf_defaultIPC;

figure(5);
plot(bufferSize, twolf_IPC128, 'k-', ...
    bufferSize, twolf_IPC64, 'c-', ...
    bufferSize, twolf_IPC32, 'm-', ...
    bufferSize, twolf_IPC16, 'r-', ...
    bufferSize, twolf_IPC8, 'g-', ...
    x, g, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');