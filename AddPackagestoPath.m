function AddPackagestoPath
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Add all pacakges to path
%
% Author: Dani Agramonte
% Last Updated: 05.18.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% packages location
package_loc = 'C:\Users\Dani\Documents\MATLAB Packages';

% get all folders in directory
packages = dir(package_loc);

% remove '.' and '..'
packages = packages(~ismember({packages.name},{'.','..'}));

% add each package to path
for i = 1:size(packages,1)
    addpath(genpath(fullfile(packages(i).folder,packages(i).name)));
end