GENDER = "female";

[tennisHeights, tennisWeights] = get_data(strcat(GENDER, "_tennis.csv"));
[swimmersHeights, swimmersWeights] = get_data(strcat(GENDER, "_swimmers.csv"));

fprintf("Test the height of swimmers vs tennis players\n");
[H, PVAL, CI, STATS] = ttest2(tennisHeights, swimmersHeights, "vartype", "unequal")
mean(tennisHeights)
mean(swimmersHeights)

% MALE
% H = 0
% PVAL = 0.4267
% CI =
%  -1.3790
%   3.2422

% FEMALE
%H = 0
%PVAL = 0.073557
%CI =
%  -0.1909
%   4.1382
   
% Data suggests that the mean height of MALE swimmers and that of tennis players is equal
% Data 

fprintf("Test the weight of swimmers vs tennis players\n");
[H, PVAL, CI, STATS] = ttest2(tennisWeights, swimmersWeights, "vartype", "unequal");

% MALE
% H = 0
% PVAL = 0.4967
% CI =
%  -2.9755
%   1.4503

% FEMALE
%H = 0
%PVAL = 0.3518
%CI =
%  -2.9489
%   1.0571

% Data suggests that the mean weight of MALE/FEMALE swimmers and that of tennis players is equal


