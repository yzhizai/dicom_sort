function modules_cfg = dicom_operation_master

module1 = cfg_repeat;
module1.name = 'sort the dicom files';
module1.tag = 'dicom_sort';
module1.values = {dicom_category_cfg_func};
module1.forcestruct = true;
module1.help = {'sort the dicom files'};

modules_cfg = cfg_repeat;
modules_cfg.name = 'to deal with dicom';
modules_cfg.tag = 'dicom_operate';
modules.forcestruct = true;
modules_cfg.values = {module1};
modules_cfg.help = {'the dicom processing module'};
