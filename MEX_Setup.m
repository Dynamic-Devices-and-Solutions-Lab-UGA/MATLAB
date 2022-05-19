function MEX_Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Automatically checks for the environmental variable MW_MINGW64_LOC and
% sets it if it doesn't exist
%
% Author: Dani Agramonte
% Last Updated: 05.18.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% builds environmental variable if it doesn't exist
if isempty(getenv('MW_MINGW64_LOC'))
    setenv('MW_MINGW64_LOC','C:\Users\Dani\Documents\mingw64');
end