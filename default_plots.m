clear;
clf;

benchmarks = {'crafty', 'gcc', 'mgrid', 'twolf', 'vortex'};
IPC = [1.2551 1.2435 1.6248 1.5067 1.4103];
L1_misses = [512871 383685 1594761 730986 427497];
L1_miss_rate = [0.0263 0.0167 0.0869 0.0413 0.0192];
L2_misses = [31796 114150 583340 5473 98092];
L2_miss_rate = [0.0104 0.0472 0.3189 0.0027 0.0345];
cache_miss_rate = [0.0263 0.0104; 0.0167 0.0472; 0.0869 0.3189; 0.0413 0.0027; 0.0192 0.0345];

figure(1);
bar(IPC);
set(gca, 'XTick', 1:5, 'XTickLabel', benchmarks);
xlabel('Benchmark');
ylabel('IPC');
title('IPC for each benchmark');

figure(2);
bar(L1_misses);
set(gca, 'XTick', 1:5, 'XTickLabel', benchmarks);
xlabel('Benchmark');
ylabel('L1 misses');
title('L1 misses for each benchmark');

figure(3);
bar(L2_misses);
set(gca, 'XTick', 1:5, 'XTickLabel', benchmarks);
xlabel('Benchmark');
ylabel('L2 misses');
title('L2 misses for each benchmark');

figure(4);
bar(cache_miss_rate);
set(gca, 'XTick', 1:5, 'XTickLabel', benchmarks);
legend('L1 miss rate', 'L2 miss rate');
xlabel('Benchmark');
ylabel('Cache miss rate');
title('Cache miss rate for each benchmark');