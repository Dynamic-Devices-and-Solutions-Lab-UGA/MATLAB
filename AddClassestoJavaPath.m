function AddClassestoJavaPath
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Add all classes to Java path
%
% Author: Dani Agramonte
% Last Updated: 05.29.22
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% get current path
current_path = path;

% split path into components
pathComps = split(current_path,';');

% check all paths
for i = 1:numel(pathComps)
    % find all .class files
    javaClassFiles = dir(fullfile(char(pathComps(i)),'*.class'));
    disp(i)
    
    if ~isempty(javaClassFiles)
        for j = 1:numel(javaClassFiles)
            disp(j)
            javaaddpath(fullfile(javaClassFiles(j).folder,javaClassFiles(j).name));
        end
    end      
end