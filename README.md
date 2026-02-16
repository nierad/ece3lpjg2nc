# ece3lpjg2nc

A conversion tool for classical LPJ-GUESS output (.out-files) produced by EC-Earth3 to netCDF4. It will create a remapped lat-lon netcdf file that will be quick-viewable with standard viewers like ncview or panoply. It currently reads all classical LPJ-GUESS outputs (daily, yearly, and both, column and row monthly formats). 

<h2>Available files</h2>

* ece3lpjg2nc-remap.py: A version of ece3lpjg2nc with the engine of ece2cmor3 to include on-the-fly remapping (Thanks to Etienne Tourigny) which provides a remapped netCDF file. 
* nodejob_lpjg2nc.sh: An sbatch-script to run ece3lpjg2nc.py on a node. Take it as a template.
* ingrid_T???_unstructured.txt: grid-description files needed to remap from T255 -> n128 (0.7° x 0.7°) or T159 -> n80 (1.125° x 1.125°)


<h2>Reguirements</h2>

* Python 3

<h2>Python packages</h2>

* netCDF4
* python-dateutil
* pandas

<h2>Running it </h2>

Activate your environment (if that summons a question mark, read the Installation guide below first)
 ```
conda activate py36 (or "source activate py36" on some machines, e.g. Tetralith)
```
Run jobs e.g.: 
  Single file (using any of the provided py-scripts depending on where the data comes from and what you want to do with it)
```
python ece3lpjg2nc-remap.py <in-file.out> <out-file.nc>
```
  Run job on compute-nodes (you might have to edit it according to your HPC settings)
```
sbatch nodejob_lpjg2nc.sh <in-file.out> <out-file.nc>
```
When you're done
```
conda deactivate
```

<h2> Installation guide </h2>

Download a copy:
```
git clone git@stormbringer4.nateko.lu.se:tools/ece3lpjg2nc.git
cd ece3lpjg2nc
```

Load Anaconda:
  e.g.
```
module load Anaconda (use "module spider Anaconda" to search for installations)
```
...and create an environment (py36 is the name here , but can be anything...)
  **Note:** Conda-environments will use the folder ```.conda``` in your HOME-dir. You might want to link it to some other place, as over time it can become quite large. Any conda-environment will be stored there.
```
conda create --name py36 python=3.6
```
Activate environment:
```
conda activate py36 (on some machines it is $ source activate py36)
```
Now install packages if not already available:
```
conda install netCDF4
```
```
conda install pandas
```
```
conda install python-dateutil
```

Deactivate environment:
```
conda deactivate
```
That should do!

