pkg load io
pkg load statistics

GENDER = "male";
filenames = {"_athletes.csv", "_swimmers.csv", "_tennis.csv"};
sportnames = {"athletics", "swimming", "tennis"};

for populationIndex = 1:3
  filename = filenames(populationIndex){1,1};
  sportname = sportnames(populationIndex){1,1};
  [heights, weights] = get_data(strcat(GENDER, filename));
  
  fprintf("/// %s (%s):\n", sportname, GENDER);
  mean_height = mean(heights)
  median_height = median(heights)
  range_height = max(heights) - min(heights)
  
  fprintf("\n");
  
  mean_weight = mean(weights)
  median_weight = median(weights)
  range_weight = max(weights) - min(weights)
  
  fprintf("\n");
endfor