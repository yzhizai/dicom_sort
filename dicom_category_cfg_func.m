function dicom_sort_cfg = dicom_category_cfg_func

input1 = cfg_files;
input1.name = 'dicom directory';
input1.tag = 'dirofDicom';
input1.filter = {'dir'};
input1.help = {'choose the directory of the dicom files'};

input2 = cfg_files;
input2.name = 'output dirctory';
input2.tag = 'dirtoOutput';
input2.filter = {'dir'};
input2.num = [0 1];
input2.help = {'choose one directory to output the category'};

dicom_sort_cfg = cfg_exbranch;
dicom_sort_cfg.name = 'the utils to sort the dicom files';
dicom_sort_cfg.tag = 'utils_sort';
dicom_sort_cfg.val = {input1, input2};
dicom_sort_cfg.prog = @dicom_category_cfg_run_func;
dicom_sort_cfg.help = {'the utils to sort the dicom files'};



