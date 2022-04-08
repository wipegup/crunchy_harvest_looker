view: dim_clients {
  sql_table_name: `team-2-crunchy.analytics_analytics.dim_clients`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: analytics {
    type: string
    sql: ${TABLE}.analytics ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: client_program {
    type: string
    sql: ${TABLE}.client_program ;;
  }

  dimension: company_size {
    type: string
    sql: ${TABLE}.company_size ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension_group: date_signed {
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
    sql: ${TABLE}.date_signed ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: industry_group {
    type: string
    sql: ${TABLE}.industry_group ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: lead_source_l1 {
    type: string
    sql: ${TABLE}.lead_source_l1 ;;
  }

  dimension: lead_source_l2 {
    type: string
    sql: ${TABLE}.lead_source_l2 ;;
  }

  dimension: lead_source_l3 {
    type: string
    sql: ${TABLE}.lead_source_l3 ;;
  }

  dimension: load {
    type: string
    sql: ${TABLE}.load ;;
  }

  dimension: product_analytics {
    type: string
    sql: ${TABLE}.product_analytics ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: statement_key {
    type: string
    sql: ${TABLE}.statement_key ;;
  }

  dimension: transform {
    type: string
    sql: ${TABLE}.transform ;;
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

  dimension: use_case {
    type: string
    sql: ${TABLE}.use_case ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}.warehouse ;;
  }

  dimension: web_development {
    type: string
    sql: ${TABLE}.web_development ;;
  }

  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
