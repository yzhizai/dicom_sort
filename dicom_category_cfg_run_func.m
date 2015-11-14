function dicom_category_cfg_run_func(job)

folder_name = job.dirofDicom;
outputDir = job.dirtoOutput;

for bb = 1:numel(folder_name)
    datasets = dicom_folder_info(folder_name{bb}, true);

    for aa = 1:numel(datasets)
        subName = sprintf('%05d_%s', datasets(aa).DicomInfo.SeriesNumber, datasets(aa).DicomInfo.ProtocolName);
        subFolderName = fullfile(outputDir{1}, datasets(aa).DicomInfo.PatientName.FamilyName, subName);
        if ~exist(subFolderName, 'dir')  
            mkdir(subFolderName);
        end
    %     destination = cell(size(datasets(aa).Filenames));
    %     destination{:} = subFolderName;
        cellfun(@(x)copyfile(x, subFolderName), datasets(aa).Filenames);
    end
end
