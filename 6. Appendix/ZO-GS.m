n = 500; m = 100; N = 200000;
mu = 1e-4; rep = 20;
hs = [1e-8, 1e-7, 1e-6];

% log scale 측정 지점
num_points = 20;
logx = round(logspace(log10(1), log10(N), num_points));
fs_mean = zeros(length(hs), num_points);

for h_idx = 1:length(hs)
    h = hs(h_idx);
    f_record = zeros(rep, num_points);

    for trial = 1:rep
        A = randn(m, n);
        x_bar = randn(n, 1);
        omega = 0.01 * randn(m, 1);
        b = A * x_bar + omega;

        x = randn(n, 1);
        f0 = @(x) 0.5 * norm(A*x - b)^2;
        fvals = zeros(1, num_points);
        log_counter = 1;

        for k = 1:N
            u = randn(n, 1);
            f1 = f0(x + mu * u);
            f2 = f0(x);
            G = (f1 - f2) / mu * u;
            x = x - h * G;

            if k == logx(log_counter)
                fvals(log_counter) = f0(x);
                log_counter = log_counter + 1;
                if log_counter > num_points
                    break;
                end
            end
        end
        f_record(trial, :) = fvals;
    end
    fs_mean(h_idx, :) = mean(f_record, 1);
end

% Plot
figure;
semilogy(logx, fs_mean', 'LineWidth', 2);
xlabel('$\mathrm{Number\ of\ Iterations}$', 'Interpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 14);
ylabel('$\mathrm{Objective\ Value\ f(x_k)}$', 'Interpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 14);
legend(arrayfun(@(h) sprintf('h = %.0e', h), hs, 'UniformOutput', false), ...
    'Interpreter', 'latex', 'Location', 'southwest', ...
    'FontName', 'Latin Modern Roman', 'FontSize', 12);
set(gca, 'TickLabelInterpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 12);
grid off;

xlim([1, N]);

print('ZO-GS', '-dpng', '-r300');
