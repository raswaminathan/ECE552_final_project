%% Preliminary benchmark L1 cache miss data graph
clear;
T = readtable('default_data.csv')

benchmarks_table = T(1:20, 1);
benchmarks = table2array(benchmarks_table);
cache_misses_table = T(1:20, 3);
cache_misses = table2array(cache_misses_table);
cache_percentage_table = T(1:20, 4);
cache_percentage_miss = table2array(cache_percentage_table);

figure;
bar(cache_misses)
set(gca, 'XTick', 1:20, 'XTickLabel', benchmarks)
axis tight
xlabel('Benchmarks');
ylabel('Number of L1 cache misses');
title('Number of L1 cache misses for suite of benchmarks');

figure;
bar(cache_percentage_miss)
set(gca, 'XTick', 1:20, 'XTickLabel', benchmarks)
axis tight
xlabel('Benchmarks');
ylabel('Percent of L1 cache misses');
title('Percentage of L1 cache misses for suite of benchmarks');
