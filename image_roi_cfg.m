function cfg = image_roi_cfg

input1 = cfg_files;
input1.name = 'choose the image';
input1.tag = 'file_name';
input1.num = [0, 1];
input1.filter = {'image'};
input1.help = {'choose a image to manipulate'};

input2 = cfg_entry;
input2.name = 'select the slices';
input2.tag = 'slice_number';
input2.strtype = 'i';
input2.num = [1, Inf];
input2.help = {'select slices to eliminate'};

input3 = cfg_entry;
input3.name = 'suffix';
input3.tag = 'suffix';
input3.val = {'crop'};
input3.strtype = 's';
input3.num = [0, 10];
input3.help = {'specified the suffix string', ...
    'if empty, it will overwrite the original image'};

cfg = cfg_exbranch;
cfg.name = 'eliminate the slice';
cfg.tag = 'eli_slice';
cfg.val = {input1, input2 input3};
cfg.prog = @image_roi_cfg_run;
cfg.help = {'used to eliminate the specified slices'};
