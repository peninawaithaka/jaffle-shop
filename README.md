
## Jaffle-shop Analytics Project
This project is an implementation of the Modern Data Stack in analytical engineering. Data is loaded from s3 to snowflake and transformed within dbt. 

Try running the following commands:
- dbt debug - to test connection to snowflake account
- dbt run - runs all the models and materializes then to tables and views
- dbt test - runs all the tests defined

### Data Stack:
- AWS s3 - source data
- snowflake - analytics datawarehouse
- dbt - data build tool to perform transformations 

```bash
git init
git add .
git commit -m ""
git remote add origin gitRemoteUrl
git remote -v 
git push branchName
```
