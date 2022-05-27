function System_Theme_Setup(new_theme)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Sets up system theme for MATLAB
%
% Author: Dani Agramonte
% Last Updated: 05.26.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% create environmental variable for the system theme and set it to the
% default theme, as well as creating location for path of scheme
if (isempty(getenv('SYSTEM_THEME')))||(isempty(getenv('SCHEME_LOC')))
    % set default system theme
    setsysenvironvar('SYSTEM_THEME','default');
    
    % set scheme location
    setsysenvironvar('SCHEME_LOC',['C:\Users\Dani\Documents\'...
        'MATLAB Packages\matlab-schemer\schemes']);
end

% get scheme location from environmental variables
scheme_loc = getenv('SCHEME_LOC');

% get current theme
current_theme = getenv('SYSTEM_THEME');

% get path for system theme
new_theme_path = fullfile(scheme_loc,[new_theme,'.prf']);

% get path for default theme
default_theme_path = fullfile(scheme_loc,'default.prf');

if ~strcmp(current_theme,new_theme)
    if exist(new_theme_path, 'file')
        % import new theme
        schemer_import(new_theme_path);
        
        % set new environmental variable to new theme
        setsysenvironvar('SYSTEM_THEME',new_theme);
    else
        % File does not exist.
        warning('Warning: file does not exist:\n%s', new_theme_path);
        
        % set to default theme
        schemer_import(default_theme_path);
    end
end