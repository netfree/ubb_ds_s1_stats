% function that reads a CSV file (! does not read the first row)
% Params:
%   filename - path to file relative to the data directory
% Returns:
%   heights - array of heights from the CSV file
%   weights - array of weights from the CSV file
%   n - number of entries from the CSV file

function [heights, weights, n] = get_data(filename)
  % system path to data directory
  DATA_PATH = 'D:\git\ubb_ds_s1_stats\data\';

  data = csv2cell(strcat(DATA_PATH, filename));
  heights = cell2mat(data(2:end,1));
  weights = cell2mat(data(2:end,2));
    n = length(heights);
endfunction