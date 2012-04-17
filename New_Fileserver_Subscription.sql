-----------------BEGIN: Script to be run at Publisher 'USRC_SIMSSERVER'-----------------
use [SIMS]
exec sp_addsubscription @publication = N'Inventory', @subscriber = N'USRC_FILESERVER', @destination_db = N'Inventory', @sync_type = N'Automatic', @subscription_type = N'pull', @update_mode = N'read only'
GO
-----------------END: Script to be run at Publisher 'USRC_SIMSSERVER'-----------------

-----------------BEGIN: Script to be run at Subscriber 'USRC_FILESERVER'-----------------
use [Inventory]
exec sp_addpullsubscription @publisher = N'USRC_SIMSSERVER', @publication = N'Inventory', @publisher_db = N'SIMS', @independent_agent = N'True', @subscription_type = N'pull', @description = N'', @update_mode = N'read only', @immediate_sync = 1

exec sp_addpullsubscription_agent @publisher = N'USRC_SIMSSERVER', @publisher_db = N'SIMS', @publication = N'Inventory', @distributor = N'USRC_SIMSSERVER', @distributor_security_mode = 1, @distributor_login = N'', @distributor_password = null, @enabled_for_syncmgr = N'False', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 1, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 20071114, @active_end_date = 99991231, @alt_snapshot_folder = N'', @working_directory = N'', @use_ftp = N'False', @job_login = N'USMR\SQLadmin', @job_password = null, @publication_type = 0
GO
-----------------END: Script to be run at Subscriber 'USRC_FILESERVER'-----------------

