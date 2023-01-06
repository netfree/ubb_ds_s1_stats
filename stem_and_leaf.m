pkg load io
pkg load statistics

gender = {"female", "male"};
color = {"r", "b"}
filenames = {"_athletes.csv", "_swimmers.csv", "_tennis.csv"};
sports = {"Athletics", "Swimming", "Tennis"};


for sportsIdx = 1:3
  for idx = 1:2
    [athletsHeights, athletsWeights] = get_data(strcat(gender(idx){1,1}, filenames(sportsIdx){1, 1}));
    stemleaf(athletsHeights, strcat(gender(idx){1, 1}, sports(sportsIdx){1,1}, "Height"));
  endfor;
endfor;





