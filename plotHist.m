function plotHist(players, n)  hist(players(:,8), 100);  plotTitle = strcat('Histogram of srComp = srT*coop^6, n = ', num2str(n));  title(plotTitle);  ylabel('# of players');  xlabel('srComp');endfunction