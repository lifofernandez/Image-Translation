# Image Translation
Some bash lines to extract text from images with Teserract (make shure you have it working) 
and then translate it using [git.io/trans](https://github.com/soimort/translate-shell)
(included in vendor folder).
## Usage
```
$ mkdir imgs tifs txts trns
```
put some JPGs inside "imgs" folder, and then run 
```
$ ./jpg2tif && ./tif2txt && ./txt2trn
```
You will find different steps of the output in those folders
