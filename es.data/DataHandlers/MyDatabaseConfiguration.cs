using System.Data.Entity;
using System.Data.Entity.SqlServer;

public class MyDbConfiguration : DbConfiguration
{
    public MyDbConfiguration()
    {
        // For SQL Server connections, use the SQL Azure execution strategy.
        SetExecutionStrategy("System.Data.SqlClient", () => new SqlAzureExecutionStrategy());
    }
}
