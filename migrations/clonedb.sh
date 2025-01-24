# simple_integration.sh script that reads workflow.conf file and execute it.
#!/bin/bash
# author: Marcel Castro
set -e
print_log () {
    printf "[`date +'%d/%m/%Y %H:%M:%S'`] [$1] $2\n"
}
export -f print_log

run_workflow () {
    print_log "INFO" "Running workflow"
        ~/snowflake/snowsql -a $SF_ACCOUNT -u $SF_USERNAME -r $SF_ROLE -w $SF_WAREHOUSE -d $SF_DATABASE -f ${GITHUB_WORKSPACE}/migrations/backup_db.sql
}

## running workflow
run_workflow
