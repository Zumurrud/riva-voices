set ignore-comments := true

db_name := 'installed_abs.sqlite'

dump-database:
	sqlite3 --readonly {{db_name}} '.output db.sql' '.schema'
	sqlite3 --readonly {{db_name}} '.mode csv' '.output db.csv' 'select * from abs order by name;'

build-database:
	cat db.sql | sqlite3 {{db_name}}
	# if the table already exists, sqlite tries to INSERT the header row - hence --skip
	sqlite3 {{db_name}} '.mode csv' '.import --skip 1 db.csv abs'

[confirm("This will delete this directory's database and rebuild it from db.sql/db.csv.  Continue?")]
rebuild-database:
	rm {{db_name}}
	just build-database
