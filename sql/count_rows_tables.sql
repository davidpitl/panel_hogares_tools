SELECT concat('select ''', table_name ,''' as TableName, COUNT(*) as RowCount from ' , table_name , ' UNION ALL ')  as TR FROM information_schema.tables where table_schema = 'panel_hogares2'
