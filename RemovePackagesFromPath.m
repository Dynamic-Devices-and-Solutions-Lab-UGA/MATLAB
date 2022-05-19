function RemovePackagesFromPath
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Remove all packages from path on shutdown
%
% Author: Dani Agramonte
% Last Updated: 05.18.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define package names
pkg_names = {'hatchfill2_r8','legendflex-pkg-master','export_fig',...
    'linspecer','MIMT','tdms','Windows_API'};

% get home directory
[home_dir,~,~] = fileparts(mfilename('fullpath'));

% remove each path
for i = 1:size(pkg_names,2)
    rmpath(genpath(fullfile(home_dir,pkg_names{i})));
end