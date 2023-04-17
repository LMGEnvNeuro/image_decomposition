#!/bin/bash
job_name="NG_decomposer" # whatever is the name of your project analysis
#path_to_model_list="/home/mpib/user/models.txt" # points to text file with list of models, subjects or whatever you want to loop
#model_list=$(cat ${path_to_model_list} | tr '\n' ' ') # creates variable with looped variable (in my case it's a model name)

for image in {1..288}; do
      sbatch \
          --job-name ${job_name}_${image} \
          --cpus-per-task 1 \
          --mem 32gb \
          --time 24:00:00 \
          --output ~/logs/NG-dec-${image}-%j.log \
          --workdir . \
          --wrap ". /etc/profile ; module load matlab/R2020a; matlab -nodisplay -r \"llf_classifier_trial(${image})\""
done
