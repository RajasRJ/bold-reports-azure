ALTER TABLE `{database_name}`.BOLDRS_DeploymentReports ADD IsMakeReportPublic tinyint NOT NULL;

UPDATE `{database_name}.BOLDRS_ScheduleDetail SET IsNoDataEnabled = 0 WHERE IsNoDataEnabled IS NULL;

UPDATE `{database_name}`.BOLDRS_ScheduleDetail SET EmailContent = 'null' WHERE EmailContent IS NULL;

UPDATE `{database_name}`.BOLDRS_ScheduleDetail SET Subject = 'null' WHERE Subject IS NULL;

UPDATE `{database_name}`.BOLDRS_ScheduleDetail SET ScheduleExportInfo = 'null' WHERE ScheduleExportInfo IS NULL;

UPDATE `{database_name}`.BOLDRS_ScheduleDetail SET ScheduleBucketExportInfo = 'null' WHERE ScheduleBucketExportInfo IS NULL;
