view: fact_time_entries {
  sql_table_name: `analytics_analytics.fact_time_entries`
    ;;

  dimension: billable {
    type: yesno
    sql: ${TABLE}.billable ;;
  }

  dimension: billable_rate {
    type: number
    sql: ${TABLE}.billable_rate ;;
  }

  dimension: budgeted {
    type: yesno
    sql: ${TABLE}.budgeted ;;
  }

  dimension: cost_rate {
    type: number
    sql: ${TABLE}.cost_rate ;;
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

  dimension_group: ended {
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
    sql: ${TABLE}.ended_time ;;
  }

  dimension: external_reference {
    type: string
    sql: ${TABLE}.external_reference ;;
  }

  dimension: hours {
    type: number
    sql: ${TABLE}.hours ;;
  }

  dimension: hours_without_timer {
    type: number
    sql: ${TABLE}.hours_without_timer ;;
  }

  dimension: is_billed {
    type: yesno
    sql: ${TABLE}.is_billed ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_locked {
    type: yesno
    sql: ${TABLE}.is_locked ;;
  }

  dimension: is_running {
    type: yesno
    sql: ${TABLE}.is_running ;;
  }

  dimension: locked_reason {
    type: string
    sql: ${TABLE}.locked_reason ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: rounded_hours {
    type: number
    sql: ${TABLE}.rounded_hours ;;
  }

  dimension_group: spent {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.spent_date ;;
  }

  dimension_group: started_time {
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
    sql: ${TABLE}.started_time ;;
  }

  dimension: task_assignment_id {
    type: number
    sql: ${TABLE}.task_assignment_id ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension: time_entry_id {
    type: number
    sql: ${TABLE}.time_entry_id ;;
    primary_key: yes
  }

  dimension: timer_started_at {
    type: string
    sql: ${TABLE}.timer_started_at ;;
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

  dimension: user_assignment_id {
    type: number
    sql: ${TABLE}.user_assignment_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_hours {
    type: sum
    sql: ${hours} ;;
  }

  measure: total_billable_hours {
    type: sum
    sql: ${hours} ;;
    filters: [billable: "yes"]
  }
}
