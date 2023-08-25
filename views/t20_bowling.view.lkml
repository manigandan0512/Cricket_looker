# The name of this view in Looker is "T20 Bowling"
view: t20_bowling {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Cricket_details.t20_bowling` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bbi" in Explore.

  dimension: bbi {
    type: string
    sql: ${TABLE}.bbi ;;
  }

  dimension: bbm {
    type: string
    sql: ${TABLE}.bbm ;;
  }

  dimension: bl {
    type: string
    sql: ${TABLE}.bl ;;
  }

  dimension: bwa {
    type: number
    sql: ${TABLE}.bwa ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bwa {
    type: sum
    sql: ${bwa} ;;  }
  measure: average_bwa {
    type: average
    sql: ${bwa} ;;  }

  dimension: bwe {
    type: number
    sql: ${TABLE}.bwe ;;
  }

  dimension: bwsr {
    type: number
    sql: ${TABLE}.bwsr ;;
  }

  dimension: cd {
    type: number
    sql: ${TABLE}.cd ;;
  }

  dimension: fw {
    type: number
    sql: ${TABLE}.fw ;;
  }

  dimension: fwk {
    type: number
    sql: ${TABLE}.fwk ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: in {
    type: number
    sql: ${TABLE}.`in` ;;
  }

  dimension: md {
    type: number
    sql: ${TABLE}.md ;;
  }

  dimension: mt {
    type: number
    sql: ${TABLE}.mt ;;
  }

  dimension: ov {
    type: number
    sql: ${TABLE}.ov ;;
  }

  dimension: pr {
    type: string
    sql: ${TABLE}.pr ;;
  }

  dimension: sp {
    type: string
    sql: ${TABLE}.sp ;;
  }

  dimension: tw {
    type: number
    sql: ${TABLE}.tw ;;
  }

  dimension: wk {
    type: number
    sql: ${TABLE}.wk ;;
  }
  measure: count {
    type: count
  }
}
