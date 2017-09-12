function cfg = imgfilter_cfg

dir1 = cfg_files;
dir1.name = 'referece dir';
dir1.tag = 'ref_dir';
dir1.filter = {'dir'};
dir1.num = [0, 1];
dir1.help = {'choose the reference dir'};

filstr1 = cfg_entry;
filstr1.name = 'filter string';
filstr1.tag = 'fil_str';
filstr1.strtype = 's';
filstr1.num = [1, Inf];
filstr1.help = {'specify the string to choose the file'};

strnum = cfg_entry;
strnum.name = 'index:';
strnum.tag = 'strnum';
strnum.val = {[1, 1, 0]};
strnum.strtype = 'i';
strnum.num = [1, 3];
strnum.help = {'point out the index of the basename', ...
    'Sometimes regular seperation can''t fulfill the request, we should indicate the start and end position of basename'};

dir2 = cfg_files;
dir2.name = 'check dir';
dir2.tag = 'chk_dir';
dir2.filter = {'dir'};
dir2.num = [0, 1];
dir2.help = {'choose the check dir'};

str1 = cfg_entry;
str1.name = 'prefix';
str1.tag = 'prefix';
str1.strtype = 's';
str1.num = [1, Inf];
str1.help = {'give the prefix name'};

str2 = cfg_entry;
str2.name = 'suffix';
str2.tag = 'suffix';
str2.strtype = 's';
str2.num = [1, Inf];
str2.help = {'give the suffix name'};

str = cfg_repeat;
str.name = 'specified string:';
str.tag = 'sstring';
str.values = {str1, str2};
str.help = {'specified the surrounding of the basename'};

bra1 = cfg_branch;
bra1.name = 'reference';
bra1.tag = 'ref_bra';
bra1.val = {dir1, filstr1, strnum};
bra1.help = {'reference brach'};

bra2 = cfg_branch;
bra2.name = 'check options:';
bra2.tag = 'chk_bra';
bra2.val = {dir2, str};
bra2.help = {'check brach'};

cfg = cfg_exbranch;
cfg.name = 'compare dirs';
cfg.tag = 'strFilter';
cfg.val = {bra1, bra2}
cfg.prog = @imgfilter_cfg_run;
cfg.help = {'This module is used to match two seperated directories', ...
    'When we need to process the data in two spererate directories, we hope files in one directory have the corresponding files in another', ....
    'This module is used to realize it'};




