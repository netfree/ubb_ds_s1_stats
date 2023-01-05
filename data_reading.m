pkg load io

general_population = csv2cell('C:\Users\Ale\Downloads\general_population_smaller.csv')
% gender, age, weight, height
GP = cell2mat(general_population(2:end,:));


tenis_female = csv2cell('C:\Users\Ale\Downloads\female_measurements.csv')
% height, weight

