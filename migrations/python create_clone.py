import snowflake.connector
ctx = snowflake.connector.connect(
        user = "pradeep",
        password = "Training@123",
        account = "io63122.central-india.azure",
        role = "ACCOUNTADMIN"
    )
	
res = con.cursor().execute('create database tranining_new_backup clone tranining_new')