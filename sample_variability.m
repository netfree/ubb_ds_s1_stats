pkg load io
pkg load statistics

GENDER = "male";
filenames = {"_athletes.csv", "_swimmers.csv", "_tennis.csv", "_general_population.csv"};
sportnames = {"athletics", "swimming", "tennis", "general population"};

for populationIndex = 1:4
  filename = filenames(populationIndex){1,1};
  sportname = sportnames(populationIndex){1,1};
  [heights, weights] = get_data(strcat(GENDER, filename));
  
  fprintf("/// %s (%s):\n", sportname, GENDER);
  mean_height = mean(heights)
  s_height = var(heights) % standard deviation (divided by N-1)
  coefficient_of_variation_height = s_height / mean_height
  iqr_height = iqr(heights);
  q1_height = quantile(heights, 0.25)
  q3_height = quantile(heights, 0.75)
  iqdc_height = iqr_height / (2 * median(heights))
  nr_outliers_height = sum(heights < q1_height - 1.5 * iqr_height | heights > q3_height + 1.5 * iqr_height)
  outlier_coefficient_height = nr_outliers_height / length(heights)
  
  fprintf("\n");
  
  mean_weight = mean(weights)
  s_weight = var(weights) % standard deviation (divided by N-1)
  coefficient_of_variation_weight = s_weight / mean_weight
  iqr_weight = iqr(weights);
  q1_weight = quantile(weights, 0.25)
  q3_weight = quantile(weights, 0.75)
  iqdc_weight = iqr_weight / (2 * median(weights))
  nr_outliers_weight = sum(weights < q1_weight - 1.5 * iqr_weight | weights > q3_weight + 1.5 * iqr_weight)
  outlier_coefficient_weight = nr_outliers_weight / length(weights)
  fprintf("\n");
endfor