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
  s_height = var(heights) % standard deviation (divided by N-1)
  coefficient_of_variation_height = s_height / mean_height
  
  fprintf("\n");
  
  mean_weight = mean(weights)
  s_weight = var(weights) % standard deviation (divided by N-1)
  coefficient_of_variation_weight = s_weight / mean_weight
  fprintf("\n");
endfor