pkg load io

% system path to git repo root directory
GIT_REPO_PATH = 'D:\git\ubb_ds_s1_stats';

femaleAthletesData = csv2cell(strcat(GIT_REPO_PATH, "/data/female_athletes.csv"));
femaleAthletesHeightArray = cell2mat(femaleAthletesData(2:end,1));
femaleAthletesWeightArray = cell2mat(femaleAthletesData(2:end,2));

% Height Mean and Standard Deviation
femaleAthletesHeightMean = mean(femaleAthletesHeightArray)
femaleAthletesHeightStd = std(femaleAthletesHeightArray)

% Weight Mean and Standard Deviation
femaleAthletesWeightMean = mean(femaleAthletesWeightArray)
femaleAthletesWeightStd = std(femaleAthletesWeightArray)