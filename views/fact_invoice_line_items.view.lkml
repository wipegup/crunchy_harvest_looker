view: fact_invoice_line_items {
  sql_table_name: `analytics_analytics.fact_invoice_line_items`
    ;;

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_key {
    type: string
    sql: ${TABLE}.client_key ;;
  }

  dimension: closed_at {
    type: string
    sql: ${TABLE}.closed_at ;;
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

  dimension: creator_id {
    type: number
    sql: ${TABLE}.creator_id ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: due_amount {
    type: number
    sql: ${TABLE}.due_amount ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: estimate {
    type: string
    sql: ${TABLE}.estimate ;;
  }

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}.invoice_amount ;;
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: invoice_line_item_amount {
    type: number
    sql: ${TABLE}.invoice_line_item_amount ;;
  }

  dimension: invoice_line_item_id {
    type: number
    sql: ${TABLE}.invoice_line_item_id ;;
    primary_key:  yes
  }

  dimension_group: issue {
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
    sql: ${TABLE}.issue_date ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: paid_at {
    type: string
    sql: ${TABLE}.paid_at ;;
  }

  dimension_group: paid_date {
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
    sql: ${TABLE}.paid_date ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.payment_term ;;
  }

  dimension: period_end {
    type: string
    sql: ${TABLE}.period_end ;;
  }

  dimension: period_start {
    type: string
    sql: ${TABLE}.period_start ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: purchase_order {
    type: string
    sql: ${TABLE}.purchase_order ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: recurring_invoice_id {
    type: string
    sql: ${TABLE}.recurring_invoice_id ;;
  }

  dimension: retainer {
    type: string
    sql: ${TABLE}.retainer ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_at ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: tax2 {
    type: number
    sql: ${TABLE}.tax2 ;;
  }

  dimension: tax2_amount {
    type: number
    sql: ${TABLE}.tax2_amount ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: taxed {
    type: yesno
    sql: ${TABLE}.taxed ;;
  }

  dimension: taxed2 {
    type: yesno
    sql: ${TABLE}.taxed2 ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
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
    drill_fields: []
  }

  measure: total_amount {
    type: sum
    sql: ${invoice_line_item_amount} ;;
  }
}
