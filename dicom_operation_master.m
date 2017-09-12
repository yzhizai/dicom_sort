function modules_cfg = dicom_operation_master

module1 = cfg_repeat;
module1.name = 'sort the dicom files';
module1.tag = 'dicom_sort';
module1.values = {dicom_category_cfg_func};
module1.forcestruct = true;
module1.help = {'sort the dicom files'};

module3 = cfg_repeat;
module3.name = 'image modification';
module3.tag = 'modify_img';
module3.values = {image_roi_cfg, imgfilter_cfg};
module3.forcestruct = true;
module3.help = {'This module is used to eliminate the tissue in files', ...
    'the select row/col/slice will be assigned to be 0'};

modules_cfg = cfg_repeat;
modules_cfg.name = 'to deal with dicom';
modules_cfg.tag = 'dicom_operate';
modules.forcestruct = true;
modules_cfg.values = {module1, module3};
modules_cfg.help = {'the dicom processing module'};
