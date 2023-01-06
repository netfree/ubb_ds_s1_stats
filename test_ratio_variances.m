% test ratio of variances between tennis players and the general population

GENDER = "female";

[tennisHeights, tennisWeights] = get_data(strcat(GENDER, "_tennis.csv"));
[generalPopulationHeights, generalPopulationWeights] = get_data(strcat(GENDER, "_general_population.csv"));

% heights
[H, VAL, CI, STATS] = vartest2(tennisHeights, generalPopulationHeights)

% weights
[H, VAL, CI, STATS] = vartest2(tennisWeights, generalPopulationWeights);

% variances for height appear to be equal (male)
% data strongly suggests that variances for weight are not equal (male + female)