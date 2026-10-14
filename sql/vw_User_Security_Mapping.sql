-- View: User Security Mapping Matrix for Dynamic RLS
CREATE VIEW [sec].[vw_User_Security_Mapping] AS
SELECT 
    u.UserID,
    u.UserEmail,
    u.ActiveDirectoryGroup,
    r.RegionID,
    r.RegionName
FROM [sec].[Users] u
INNER JOIN [sec].[UserRegionMapping] m ON u.UserID = m.UserID
INNER JOIN [dim].[Region] r ON m.RegionID = r.RegionID
WHERE u.IsActive = 1;
