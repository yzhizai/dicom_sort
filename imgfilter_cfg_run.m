function imgfilter_cfg_run(job)

refDir = job.ref_bra.ref_dir{1};
chkDir = job.chk_bra.chk_dir{1};
refStr = job.ref_bra.fil_str;
refIdx = job.ref_bra.strnum;
strSeries = job.chk_bra.sstring;

pre_Name = [];
suf_Name = [];
for aa = 1:numel(strSeries)
    stri = strSeries{aa};
    field_name = fieldnames(stri);
    switch field_name{1}
        case 'prefix'
            pre_Name = [pre_Name, stri.prefix];
        case 'suffix'
            suf_Name = [suf_Name, stri.suffix];
    end
end

fileList = dir(fullfile(refDir, refStr));
for crun = 1:numel(fileList)
    [~, tit, ~] = fileparts(fileList(crun).name);
    strCell = textscan(tit, '%s', 'delimiter', '_');
    basename = strCell{1}{refIdx(1)};
    basename = basename(refIdx(2):end + refIdx(3)); 
    
    final_Name = [pre_Name, basename, suf_Name];
    if ~exist(fullfile(chkDir, final_Name), 'file')
        fprintf('no %s\n', final_Name)
    end
end