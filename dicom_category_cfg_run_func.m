function dicom_category_cfg_run_func(job)

folder_name = job.dirofDicom;
outputDir = job.dirtoOutput;

datasets = dicom_folder_info(folder_name{1}, true);

for aa = 1:numel(datasets)
    subFolderName = fullfile(outputDir{1}, datasets(aa).SeriesDescription);
    if ~exist(subFolderName, 'dir')  
        mkdir(subFolderName);
    end
%     destination = cell(size(datasets(aa).Filenames));
%     destination{:} = subFolderName;
    cellfun(@(x)copyfile(x, subFolderName), datasets(aa).Filenames);
end
