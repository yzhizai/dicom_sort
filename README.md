# dicom_sort
It is a tool for categorizing the mri dicom files based on the [matlabbatch](http://sourceforge.net/p/matlabbatch/wiki/Home/).

## prerequisite

* download [matlabbatch](http://sourceforge.net/p/matlabbatch/code-git/ci/master/tree/)
* add the matlabbatch folder path to the matlab path
* download this tool
* add the tool path to the matlab path

## run

### step 1

Follow the code below, you will launch a gui from the matlabbatch.
```{matlab}
cfg_util('initcfg')
cfg_ui
```
### step 2

1. Click 'File'->'Add Application'.
1. Find the 'dicom_operation_master.m' file and select it. A new menu will appear on the menu part.
1. Click the new menu and select the 'the utils to sort the dicom files'
1. Then work as the items' introduction, finally press the green triangle to run the tool.
1. wait...then finished.
