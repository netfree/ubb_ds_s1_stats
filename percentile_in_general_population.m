% compute median value for height and weight for each sport
% the question is:
% What would be the percentile of the median in the sample collected from the general population?

pkg load io
pkg load statistics

gender = "male";
color = {"r", "b"};
filenames = {"_athletes.csv", "_swimmers.csv", "_tennis.csv"};
sports = {"Athletics", "Swimming", "Tennis"};

function percentile = get_percentile(data, reference_value)
  % number of samples less than the reference_value
  nless = sum(data < reference_value);
  % number of samples equal to the reference value
  nequal = sum(data == reference_value);
  percentile = 100 * (nless + 0.5*nequal) / length(data);
endfunction

for sportsIdx = 1:3
    sport = sports(sportsIdx){1,1};
    [heights, weights] = get_data(strcat(gender, filenames(sportsIdx){1, 1}));
    [generalPopulationHeights, generalPopulationWeights] = get_data(strcat(gender, "_general_population.csv"));
    
    fprintf("\n/////////////\n");
    fprintf("%s (%s)\n", sport, gender); 
    
    % compute median value for height
    median_height = median(heights)
    percentile_general_population_height = get_percentile(generalPopulationHeights, median_height)
    
    fprintf("\n");
    
    % compute median value for weight
    median_weight = median(weights)
    percentile_general_population_weight = get_percentile(generalPopulationWeights, median_weight)
endfor;



