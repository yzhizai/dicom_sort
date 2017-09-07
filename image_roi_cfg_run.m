function image_roi_cfg_run(job)

filename = job.file_name{1};
slice_number = job.slice_number;
suffix = job.suffix;

V = spm_vol(filename);
Y = spm_read_vols(V);

if ~isempty(suffix)
    [pat, tit, ext, ~] = spm_fileparts(V.fname);
    fname = fullfile(pat, [tit, '_', suffix, ext]);
    V.fname = fname;
    V = spm_create_vol(V);
end

Y(:, :, slice_number) = 0;

spm_write_vol(V, Y);