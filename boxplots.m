pkg load io

GENDER = "male";

[athletsHeights, athletsWeights, nAthlets] = get_data(strcat(GENDER, "_athletes.csv"));
[swimmersHeights, swimmersWeights, nSwimmers] = get_data(strcat(GENDER, "_swimmers.csv"));
[tennisPlayersHeights, tennisPlayersWeights, nTennisPlayers] = get_data(strcat(GENDER, "_tennis.csv"));

%% Height Box Plots
subplot(1,2,1);
boxplot({athletsHeights, swimmersHeights, tennisPlayersHeights}, "Notch", 0.4);
set(gca(), "xtick", [1 2 3], "xticklabel", {"Athletics", "Swimming", "Tennis"})
title(strcat("Height in different sports (", GENDER, ")"))

%% Weight Box Plots
subplot(1,2,2);
boxplot({athletsWeights, swimmersWeights, tennisPlayersWeights}, "Notch", 0.4);
set(gca(), "xtick", [1 2 3], "xticklabel", {"Athletics", "Swimming", "Tennis"})
title(strcat("Weight in different sports (", GENDER, ")"))
