function AddPackagestoPath
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Add all pacakges to path
%
% Author: Dani Agramonte
% Last Updated: 05.18.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define package names
pkg_names = {'hatchfill2_r8','legendflex-pkg-master','export_fig',...
    'linspecer','MIMT','tdms','Windows_API','grabit','chebfun-master',...
    'igesToolbox','mtimesx_20110223','panel-2.14','PolyfitnTools',...
    'Professional Plots','VariablePrecisionIntegers'};

% get home directory path
[home_dir,~,~] = fileparts(mfilename('fullpath'));

% remove each path
for i = 1:size(pkg_names,2)
    addpath(genpath(fullfile(home_dir,pkg_names{i})));
end