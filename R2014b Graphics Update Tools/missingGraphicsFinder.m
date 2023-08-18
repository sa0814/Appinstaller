function varargout = missingGraphicsFinder
% missingGraphicsFinder open Missing Graphics Finder App
%
%    The Missing Graphics Finder app attempts to detect instances where
%    graphics objects are obscured behind uipanels in a figure. The app
%    analyzes MATLAB figures and apps and generates a report listing
%    objects hidden behind uipanels. To display hidden objects, set the
%    uipanel as the Parent of the graphics object that appears hidden. This
%    change is compatible with previous releases of MATLAB.
%
%    After opening the app: 
%      1) Pick a figure from the list of open figures.
%      2) Click the "Evaluate Selected Figure" button.
%      3) Review the list of objects that might be under a uipanel
%         due to new behavior in R2014b.
%      4) Set the Parent property for the hidden object to the uipanel.
%      5) Restart your app.
%
%    In releases of MATLAB prior to R2014b, graphics objects always appear
%    on top of uipanels, regardless of whether they are parented to these
%    uipanels or not. Starting in MATLAB R2014b, uipanels appear on top of
%    axes, uicontrols, and other objects that are not explicitly parented
%    to the uipanel.
%
%    For more information, see <a href="matlab:web(fullfile(docroot, 'matlab/creating_guis/layout-a-gui-programmatically.html#bue41wp'))">Manage the Stacking Order of Grouped Components</a>.
%
%    See also UIPANEL, UICONTROL, UISTACK

%   Copyright 2014 The MathWorks, Inc.

if nargout
    varargout{1} = findMissingGraphics;
else
    findMissingGraphics;
end
    