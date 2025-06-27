n = 100; N = 5000;
mu = 0.01;
alphas = [0.02, 0.05, 0.1];
rep = 10;
dist_all = zeros(length(alphas), N);

for a_idx = 1:length(alphas)
    alpha = alphas(a_idx);
    dist_log = zeros(rep, N);

    for trial = 1:rep
        x = randn(n, 1); x = x / norm(x);
        v = randn(n, 1); v = v / norm(v);

        for k = 1:N
            u = randn(n, 1); u = u - (x'*u)*x; u = u / norm(u);
            f1 = -((x + mu * u)' * v);
            f2 = -(x' * v);
            g_mu = (f1 - f2) / mu * u;
            x = x - alpha * g_mu;
            x = x / norm(x);
            dist_log(trial, k) = acos(x' * v);
        end
    end
    dist_all(a_idx, :) = mean(dist_log, 1);
end

% ====== 그래프 출력 ======
figure;
semilogy(1:N, dist_all', 'LineWidth', 2);
xlabel('$\mathrm{Number\ of\ Iterations}$', 'Interpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 14);
ylabel('$\mathrm{Riemannian\ Distance}$', 'Interpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 14);
legend(arrayfun(@(a) sprintf('$\\alpha = %.2f$', a), alphas, 'UniformOutput', false), ...
    'Interpreter', 'latex', 'Location', 'southwest', ...
    'FontName', 'Latin Modern Roman', 'FontSize', 12);

set(gca, 'TickLabelInterpreter', 'latex', 'FontName', 'Latin Modern Roman', 'FontSize', 12);
grid off;

xlim([1, N]);

% ====== 저장 ======
print('ZO-RGD', '-dpng', '-r300');
