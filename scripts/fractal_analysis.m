% Script running fractal analysis on directory with images:

% !! Define directory for images folder:
path_to_images = '~/Desktop/Kira/';
path_to_results = '~/Desktop/';

% !! Where is the boxcount.m script file & add it as path:
pathtoolbox = '/Users/xxx/Desktop/Nature_Gradient_Data/NG_tardis_llf/toolbox/';
addpath(genpath(pathtoolbox))
% Count the images and extract names:
img_dr      = dir(path_to_images);  % directory list for labelled folders
names       = {img_dr.name};      % list of folders to names in the semantic labels dir
long        = length(img_dr);      % number of labelled folders 291

% !! n is the number of records from the top in names that is not IMAGE NAME.
n = 2;
% loop over the images:
for i = 1:(long-n)
     % load image
     image = [];
     image      = imread((fullfile(path_to_images,names{i+n})));
     % add image name to vector
     img_name{i,:}  = names{i+n};
     % run fractal analysis with function
     df = [];
     df    = fractal(image); 
     df_m(i,1) = df;
end

% save the results in CSV in results directory
table_out = table(img_name, df_m,'VariableNames',{'Image name','Df'});
writetable(table_out,fullfile(path_to_results,'Fractal_dimensions.csv'));

%%% Fractal analysis function
    function [df] = fractal(maskedRgbImage)
        I = rgb2gray(maskedRgbImage);
        % I would run binary method instead of differential if the img is
        % small resolution.using adaptive thresholding. 
        % Use the ForegroundPolarity parameter to indicate that the foreground is brighter than the background.
        I = imbinarize(I,'adaptive','Sensitivity',0.4);
        [m,r] = boxcount(I);
        dff = (-diff(log(m))./diff(log(r)));
        df = mean(dff(4:end));      
    end
    

