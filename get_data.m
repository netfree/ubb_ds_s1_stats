function [heights, weights, n] = get_data(filename)  
  % system path to git repo root directory
  DATA_PATH = 'D:\git\ubb_ds_s1_stats\data\';
  
  data = csv2cell(strcat(DATA_PATH, filename));
  heights = cell2mat(data(2:end,1));
  weights = cell2mat(data(2:end,2));
  n = length(heights);
endfunction