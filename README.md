# image_decomposition
 Repository of toolboxes and scripts for image decomposition into a set of low-level visual features

## Contents: 
* WholeIm_Decomposer - toolbox to extraxt hue, saturation, brightness, entropy, edge density. Modified in LMG by CC & IMS. Method used in Nature_gradient & ARCH studies.  
Published:
[1] Kardan, O., Demiralp, E., Hout, M. C., Hunter, M. R., Karimi, H., Hanayik, T., ... & Berman, M. G. (2015). Is the preference of natural versus man-made scenes driven by bottom�up processing of the visual features of nature?. Frontiers in psychology, 6.
[2] Berman, M. G., Hout, M. C., Kardan, O., Hunter, M. R., Yourganov, G., Henderson, J. M., ... & Jonides, J. (2014). The perception of naturalness correlates with low-level visual features of environmental scenes. PloS one, 9(12), e114572.

* CircStat2012a - auxiliary toolbox for circular statistics. Used by WholeIm_Decomposer. Published: 
[3] Berens, P., CircStat: A Matlab Toolbox for Circular Statistics, Journal of Statistical Software, Volume 31, Issue 10, 2009

* SHINEtoolbox - toolbox to control for low-level image properties by normalising contrast and luminance. Published:
[4] Willenbockel, V., Sadr, J., Fiset, D., Horne, G. O., Gosselin, F., & Tanaka, J. W. (2010). Controlling low-level image properties: the SHINE toolbox. Behavior research methods, 42(3), 671-684.

* Str_Nstr_DecomposerV3 - 3 versions of function to extract straight & non-straight edge density. Used in publications [1] & [2]. Modified by CC (Str_NStr_DecomposerV3c.m) and IMS (Str_NStr_DecomposerV3ci.m). Method used in Nature_gradient & ARCH studies.  

* Count_Colors_variableDup - function to qualtify colours on the images. Created by Carlos Cassanello. 

* fractal_analysis - function conducting fractal analysis of the image using boxcounting with either binary or differential method. Created by IMS. Method as used in: 
[5] Nature_gradient (https://doi.org/10.3389/fpsyg.2022.932507)
& ARCH studies (in preparation)  

### Update
04.2023 - Touch ups on toolboxes. Code still in need of clean up. 
