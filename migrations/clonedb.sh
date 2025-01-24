# simple_integration.sh script that reads workflow.conf file and execute it.
#!/bin/bash
# author: Marcel Castro
set -e
print_log () {
    printf "[`date +'%d/%m/%Y %H:%M:%S'`] [$1] $2\n"
}
export -f print_log
export SNOWSQL_PWD =Training@123
run_workflow () {
    print_log "INFO" "Running workflow"
        ~/snowflake/snowsql -a io63122.central-india.azure -u pradeep -o log_level=DEBUG -q "create database training_new_bkp clone training_new;"
}

## running workflow
run_workflow
