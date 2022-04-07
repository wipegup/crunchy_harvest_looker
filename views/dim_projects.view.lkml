view: dim_projects {
  sql_table_name: `analytics_analytics.dim_projects`
    ;;

  dimension: bill_by {
    type: string
    sql: ${TABLE}.bill_by ;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }

  dimension: budget_by {
    type: string
    sql: ${TABLE}.budget_by ;;
  }

  dimension: budget_is_monthly {
    type: yesno
    sql: ${TABLE}.budget_is_monthly ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: cost_budget {
    type: number
    sql: ${TABLE}.cost_budget ;;
  }

  dimension: cost_budget_include_expenses {
    type: yesno
    sql: ${TABLE}.cost_budget_include_expenses ;;
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

  dimension: ends_on {
    type: string
    sql: ${TABLE}.ends_on ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: hourly_rate {
    type: number
    sql: ${TABLE}.hourly_rate ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_billable {
    type: yesno
    sql: ${TABLE}.is_billable ;;
  }

  dimension: is_fixed_fee {
    type: yesno
    sql: ${TABLE}.is_fixed_fee ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: notify_when_over_budget {
    type: yesno
    sql: ${TABLE}.notify_when_over_budget ;;
  }

  dimension_group: over_budget_notification {
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
    sql: ${TABLE}.over_budget_notification_date ;;
  }

  dimension: over_budget_notification_percentage {
    type: number
    sql: ${TABLE}.over_budget_notification_percentage ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
    primary_key: yes
  }

  dimension: show_budget_to_all {
    type: yesno
    sql: ${TABLE}.show_budget_to_all ;;
  }

  dimension_group: starts {
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
    sql: ${TABLE}.starts_on ;;
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
    drill_fields: [name]
  }
}
