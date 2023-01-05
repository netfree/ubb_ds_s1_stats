pkg load io
pkg load statistics

GENDER = "female";

[athletsHeights, athletsWeights] = get_data(strcat(GENDER, "_athletes.csv"));
[swimmersHeights, swimmersWeights] = get_data(strcat(GENDER, "_swimmers.csv"));
[tennisPlayersHeights, tennisPlayersWeights] = get_data(strcat(GENDER, "_tennis.csv"));

% scatter plot height for athlets, swimmers, tennis players
scatter(athletsHeights, athletsWeights, 'r', 'filled');
hold on
scatter(swimmersHeights, swimmersWeights, 'b', 'filled');
hold on
scatter(tennisPlayersHeights, tennisPlayersWeights, 'g', 'filled');
hold on

title(strcat("Scatterplot for height and weight (", GENDER, ")"))

legend({strcat("Athlets (", GENDER, ")"), strcat("Swimmers (", GENDER, ")"), strcat("Tennis players (", GENDER, ")")})

