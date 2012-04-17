-- Dropping the transactional articles
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'CoinHistoryTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'CoinHistoryTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'CoinRequestsTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'CoinRequestsTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'CustomerServiceRequestsTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'CustomerServiceRequestsTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'InventoryReturnsTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'InventoryReturnsTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'LoginTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'LoginTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'MasterTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'MasterTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'sysdiagrams', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'sysdiagrams', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'tbl_Media_Ad_Codes', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'tbl_Media_Ad_Codes', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'tbl_Publications', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'tbl_Publications', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'TelevisionTapeVersions', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'TelevisionTapeVersions', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'TransactionTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'TransactionTable', @force_invalidate_snapshot = 1
GO
use [SIMS]
exec sp_dropsubscription @publication = N'SIMS', @article = N'VaultReturnsTable', @subscriber = N'all', @destination_db = N'all'
GO
use [SIMS]
exec sp_droparticle @publication = N'SIMS', @article = N'VaultReturnsTable', @force_invalidate_snapshot = 1
GO

-- Dropping the transactional publication
use [SIMS]
exec sp_droppublication @publication = N'SIMS'
GO

