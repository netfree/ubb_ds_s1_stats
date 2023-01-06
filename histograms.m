pkg load io
pkg load statistics

gender = {"female", "male"};
color = {"r", "b"}
filenames = {"_athletes.csv", "_swimmers.csv", "_tennis.csv"};
sports = {"Athletics", "Swimming", "Tennis"};


for sportsIdx = 1:3
  clf;
  hold on;
  for genderIdx = 1:2
    [athletsHeights, athletsWeights] = get_data(strcat(gender(genderIdx){1,1}, filenames(sportsIdx){1, 1}));

    subplot(2, 1, 1)
    hold on;
    title(strcat(sports(sportsIdx){1, 1}," height", " histograms"));
    hist(athletsHeights, max(athletsHeights) - min(athletsHeights), "facecolor", color(genderIdx){1,1});

    subplot(2, 1, 2)
    hold on;
    title(strcat(sports(sportsIdx){1, 1}," weight", " histograms"));
    hist(athletsWeights, 20, "facecolor", color(genderIdx){1,1});

  endfor;

    for i = 1:2
      subplot(2, 1, i)
      legend(gender);
      sp = findobj(gca, "Type", "patch");
      set(sp(1),'facealpha',0.5);
      set(sp(2),'facealpha',0.5);
    endfor;
    h = findobj(gca,'Type','patch');
    hold off;
    waitfor(h);
endfor;





