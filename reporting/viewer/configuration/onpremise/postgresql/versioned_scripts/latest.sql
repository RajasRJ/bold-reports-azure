ALTER TABLE BOLDRS_DeploymentReports ADD IsMakeReportPublic smallint NOT NULL;

UPDATE BOLDRS_ScheduleDetail SET IsNoDataEnabled = 0 WHERE IsNoDataEnabled IS NULL;

UPDATE BOLDRS_ScheduleDetail SET EmailContent = 'null' WHERE EmailContent IS NULL;

UPDATE BOLDRS_ScheduleDetail SET Subject = 'null' WHERE Subject IS NULL;

UPDATE BOLDRS_ScheduleDetail SET ScheduleExportInfo = 'null' WHERE ScheduleExportInfo IS NULL;

UPDATE BOLDRS_ScheduleDetail SET ScheduleBucketExportInfo = 'null' WHERE ScheduleBucketExportInfo IS NULL;
