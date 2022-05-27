%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% script which is automatically run on startup of MATLAB
%
% Author: Dani Agramonte
% Last Updated: 05.18.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Turn off unneccessary warnings
TurnOffWarnings;

% mex setup
MEX_Setup;

% Add useful packages to path
AddPackagestoPath;

% set system theme - broken right now
% System_Theme_Setup('darksteel');
% Call Psychtoolbox-3 specific startup function:
if exist('PsychStartup'), PsychStartup; end;

