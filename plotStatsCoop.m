function h = plotStatsCoop (players, srStats, n, matches, coopSd, matchNumber)  #scatterplot of srM vs srT with players color-coded according to coop  #j is current match    dotSize = 8;  #create scaled index for current colormap, making extremes correspond to +/- 2 sd around the mean  colors = zeros(n,3);    coopScaled = (players(:,7)-(1-2*coopSd)) / (4*coopSd);  for i=1:n    if (coopScaled(i)<0)      coopScaled(i) = 0;    elseif (coopScaled(i)>1)      coopScaled(i) = 1;    endif  endfor    #make colors scale from red to green based on coop ratings  colors = [1-coopScaled, coopScaled, zeros(n,1)];    h = scatter(players(:,1), players(:,2), dotSize, colors, "filled");    #add title and labels  plotTitle = cstrcat(" Players: ", num2str(n), ", coopSd*2: ", num2str(2*coopSd),...  "\nMatches played: ", num2str(matchNumber),"/",num2str(matches));    title(plotTitle);  xlabel("player srT");  ylabel("player srM");    #set axis ranges  axis([0,3000,0,3000])endfunction