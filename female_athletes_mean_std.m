pkg load io

[femaleAthletesHeightArray, femaleAthletesWeightArray, nFemaleAthlets]  = get_data("female_athletes.csv");

% Height Mean and Standard Deviation
femaleAthletesHeightMean = mean(femaleAthletesHeightArray)
femaleAthletesHeightStd = std(femaleAthletesHeightArray)

% Weight Mean and Standard Deviation
femaleAthletesWeightMean = mean(femaleAthletesWeightArray)
femaleAthletesWeightStd = std(femaleAthletesWeightArray)