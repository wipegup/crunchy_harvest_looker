view: dim_tasks {
  sql_table_name: `team-2-crunchy.analytics_analytics.dim_tasks`
    ;;

  dimension: billable_by_default {
    type: yesno
    sql: ${TABLE}.billable_by_default ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: default_hourly_rate {
    type: number
    sql: ${TABLE}.default_hourly_rate ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: task_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [task_id, name]
  }
}
