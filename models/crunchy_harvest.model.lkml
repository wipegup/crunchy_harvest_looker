connection: "crunchy_harvest"

# include all the views
include: "/views/**/*.view"

datagroup: crunchy_harvest_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: crunchy_harvest_default_datagroup

# explore: dim_clients {}
# explore: dim_projects {}
# explore: dim_users {}

explore: invoice_line_items {
  from: fact_invoice_line_items
  join: creator {
    from:  dim_users
    type: left_outer
    relationship: many_to_one
    sql_on: ${creator.user_id} = ${invoice_line_items.creator_id} ;;
  }
  join: client {
    from:  dim_clients
    type: left_outer
    relationship: many_to_one
    sql_on: ${client.client_id} = ${invoice_line_items.client_id} ;;

  }
  join: project {
    from:  dim_projects
    type: left_outer
    relationship: many_to_one
    sql_on: ${project.project_id} = ${invoice_line_items.project_id} ;;
  }
}

explore: time_entries {
  from: fact_time_entries
  join: user {
    from:  dim_users
    type: left_outer
    relationship: many_to_one
    sql_on: ${user.user_id} = ${time_entries.user_id} ;;
  }

  join: task {
    from:  dim_tasks
    type: left_outer
    relationship: many_to_one
    sql_on: ${task.task_id} = ${time_entries.task_id} ;;
  }

  # join: task_assignment {
  #   from:  dim_task_assignment
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${task_assignment.task_assignment_id} = ${time_entries.task_assignment_id} ;;
  # }

  # join: user_assignment {
  #   from:  dim_user_assignments
  #   type: left_outer
  #   relationship: many_to_one
  #   sql_on: ${user_assignment.user_assignment_id} = ${time_entries.user_assignment_id} ;;
  # }

  join: project {
    from:  dim_projects
    type: left_outer
    relationship: many_to_one
    sql_on: ${time_entries.project_id} = ${project.project_id} ;;
  }
}
