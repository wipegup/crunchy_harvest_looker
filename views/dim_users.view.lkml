view: dim_users {
  sql_table_name: `analytics_analytics.dim_users`
    ;;

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: calendar_integration_enabled {
    type: yesno
    sql: ${TABLE}.calendar_integration_enabled ;;
  }

  dimension: calendar_integration_source {
    type: string
    sql: ${TABLE}.calendar_integration_source ;;
  }

  dimension: can_create_invoices {
    type: yesno
    sql: ${TABLE}.can_create_invoices ;;
  }

  dimension: can_create_projects {
    type: yesno
    sql: ${TABLE}.can_create_projects ;;
  }

  dimension: can_see_rates {
    type: yesno
    sql: ${TABLE}.can_see_rates ;;
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

  dimension: default_hourly_rate {
    type: number
    sql: ${TABLE}.default_hourly_rate ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: has_access_to_all_future_projects {
    type: yesno
    sql: ${TABLE}.has_access_to_all_future_projects ;;
  }

  dimension: is_ac_analytics_consulting {
    type: yesno
    sql: ${TABLE}.is_ac_analytics_consulting ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_admin {
    type: yesno
    sql: ${TABLE}.is_admin ;;
  }

  dimension: is_ae_analytics_engineering {
    type: yesno
    sql: ${TABLE}.is_ae_analytics_engineering ;;
  }

  dimension: is_analytics {
    type: yesno
    sql: ${TABLE}.is_analytics ;;
  }

  dimension: is_contractor {
    type: yesno
    sql: ${TABLE}.is_contractor ;;
  }

  dimension: is_data_engineering {
    type: yesno
    sql: ${TABLE}.is_data_engineering ;;
  }

  dimension: is_de_data_engineer {
    type: yesno
    sql: ${TABLE}.is_de_data_engineer ;;
  }

  dimension: is_pm_program_management {
    type: yesno
    sql: ${TABLE}.is_pm_program_management ;;
  }

  dimension: is_project_manager {
    type: yesno
    sql: ${TABLE}.is_project_manager ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.telephone ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
    primary_key: yes
  }

  dimension: weekly_capacity {
    type: number
    sql: ${TABLE}.weekly_capacity ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
