%% TODO Stock beginning text, copyrights and project info and all that

%% Work consists of the files ewlegal.cls and accompanying ewlegal-*.sty


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewlegal}[2021-02-21 Legal Templates for England and Wales]

%% Uses article as a base
\LoadClass[12pt,a4paper]{article} % TODO Perhaps use KOMA-Script?



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options
%%%%%

%% Easy option management
\RequirePackage{kvoptions}

%% Select the template used
% TODO Be able to nicely handle multiple templates being selected
\DeclareBoolOption[false]{pleading}
\DeclareBoolOption[false]{opinion}


%% Extras



%% Process options given by the user
\ProcessKeyvalOptions*



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Packages
%%%%%

%% Generic Packages

%% Easy formatting of section titles
\RequirePackage[explicit]{titlesec}

%% Allows for easy use of logic
\RequirePackage{etoolbox}

%% Fancy headers and footers
\RequirePackage{fancyhdr}

%% Spaced out boxes
\RequirePackage{soul}
% TODO Doesn't seem to be reccommended anymore due to issues with luatex, so
%      perhaps replace?

%% Provides a better underline mechanic in the form of \uline
\RequirePackage[normalem]{ulem}

%% Expand the feature set of typeset lists
\RequirePackage{enumitem}

%% Handle margins
\RequirePackage[margin=2.5cm]{geometry}
% Should the end user always have to declare this? Or should we try for
% reasonable defaults?


%% ewlegal Packages

\RequirePackage{ewlegal-utils}

\ifbool{ewlegal@pleading}{\RequirePackage{ewlegal-plead}}{}

\ifbool{ewlegal@opinion}{\RequirePackage{ewlegal-opinion}}{}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Typesetting
%%%%%

%% Set linespacing to be 1.5 % Seems to be the most commonly suggested
\linespread{1.3}
