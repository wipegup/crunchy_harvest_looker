view: dim_clients {
  sql_table_name: `analytics_analytics.dim_clients`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
    primary_key: yes
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: statement_key {
    type: string
    sql: ${TABLE}.statement_key ;;
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
    drill_fields: [client_name]
  }
}
