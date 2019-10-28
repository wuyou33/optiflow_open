% Script for Reading a Polar File from TR824
% 
%   alfa5 tested manually on 131.ALL and 132.ALL and exhaustively for
%   chapters A and B. Chapter has slightly different filename conventions
%   but we will not use that data explicitly.


% % Now read some data into the system

% Set Name of File to Read
filename = './data/experimental/NACA/TR824-Digitized/132.ALL';

[datasets] = TR824_reader.read_datasets_from_file(filename);

% Let us now extract a pair of datasets
alcl_polar_dataset     = datasets.A01_data;
clcd_polar_dataset     = datasets.B01_data;

% Extract data from cl_polar_dataset
al_alcl_polar_raw      = alcl_polar_dataset(:,1);
cl_alcl_polar_raw      = alcl_polar_dataset(:,2);

% Sort cl_polar dataset
[~, sort_index_cl_polar] =  sort(al_alcl_polar_raw);
al_alcl_polar_sorted   = al_alcl_polar_raw(sort_index_cl_polar);
cl_alcl_polar_sorted   = cl_alcl_polar_raw(sort_index_cl_polar);

% Now find monotonous streak
% Compute forward difference of Cl vs alpha
dcl_alcl_polar_sorted  = diff(cl_alcl_polar_sorted);
% Find indices of points where polar is decreasing
index_dcl_decreasing   = find(dcl_alcl_polar_sorted < 0);
% Find a point near zero angle of attack
[~, index_al_min_alcl_polar_sorted] = min(al_alcl_polar_sorted.^2);
% Find highest aoa below near-zero piont where polar is decreasing 
index_start_monotonous = max(index_dcl_decreasing(index_dcl_decreasing < index_al_min_alcl_polar_sorted)) + 1;
% Find lowest aoa above near-zero piont where polar is decreasing 
index_end_monotonous   = min(index_dcl_decreasing(index_dcl_decreasing > index_al_min_alcl_polar_sorted));

% Now make monotonous streaks of cl polar
al_alcl_polar_monotonous = al_alcl_polar_sorted(index_start_monotonous:index_end_monotonous);
cl_alcl_polar_monotonous = cl_alcl_polar_sorted(index_start_monotonous:index_end_monotonous);



% Now interpolants on monotonous streaks of cl polar
al_alcl_polar_fun      = @(cl) interp1(cl_alcl_polar_monotonous , al_alcl_polar_monotonous, cl );

% Now extract data from cd_polar_dataset (cl, cd)
cl_clcd_polar_raw      = clcd_polar_dataset(:,1);
cd_clcd_polar_raw      = clcd_polar_dataset(:,2);

% Now reinterpolate alpha from monotonous streak of cl polar to find
% alpha's of cd polar
al_reinterpolated      = al_alcl_polar_fun(cl_clcd_polar_raw);
% Filter NaNs out
al_filtered            = al_reinterpolated(not(isnan(al_reinterpolated)));
cl_filtered            = cl_clcd_polar_raw(not(isnan(al_reinterpolated)));
cd_filtered            = cd_clcd_polar_raw(not(isnan(al_reinterpolated)));
% Sort 
[~, index_al_filtered] = sort(al_filtered);

% Make alpha, cl, cd polar data
al_alclcd_polar         = al_filtered(index_al_filtered);
cl_alclcd_polar         = cl_filtered(index_al_filtered);
cd_alclcd_polar         = cd_filtered(index_al_filtered);

% Now store data into a structure

% First : alpha, cl polar
processed_polars.al_alcl_polar    = al_alcl_polar_sorted;
processed_polars.cl_alcl_polar    = cl_alcl_polar_sorted;
% Second: cl, cd polar
processed_polars.cl_clcd_polar    = cl_clcd_polar_raw;
processed_polars.cd_clcd_polar    = cd_clcd_polar_raw;
% Second: alpha, cl, cd polar
processed_polars.al_alclcd_polar  = al_alclcd_polar;
processed_polars.cl_alclcd_polar  = cl_alclcd_polar;
processed_polars.cd_alclcd_polar  = cd_alclcd_polar;







% Plot diagnostics
plot(al_alcl_polar_sorted    , cl_alcl_polar_sorted    , 'x-'); hold on;
plot(al_alcl_polar_monotonous, cl_alcl_polar_monotonous, 'o-'); grid on;
plot(al_filtered             , cl_filtered             , '*-');

% Create interpolants 









alpha_monotonous_streak
alpha_monotonous_streak





% 
%Re_dataset_01 = 3e6;
%cl_polar_alpha_data_dataset_01

%dataset_01_alpha_cl = ;
%dataset_01_alpha_for_cl = ;
%dataset_01_alpha_for_cl = ;
