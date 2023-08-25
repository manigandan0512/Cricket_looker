# The name of this view in Looker is "Odi All Round"
view: odi_all_round {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Cricket_details.ODI_all_round` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bbad" in Explore.

  dimension: bbad {
    type: number
    sql: ${TABLE}.bbad ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bbad {
    type: sum
    sql: ${bbad} ;;  }
  measure: average_bbad {
    type: average
    sql: ${bbad} ;;  }

  dimension: bbi {
    type: string
    sql: ${TABLE}.bbi ;;
  }

  dimension: bta {
    type: number
    sql: ${TABLE}.bta ;;
  }

  dimension: bwa {
    type: number
    sql: ${TABLE}.bwa ;;
  }

  dimension: ct {
    type: number
    sql: ${TABLE}.ct ;;
  }

  dimension: fw {
    type: number
    sql: ${TABLE}.fw ;;
  }

  dimension: hn {
    type: number
    sql: ${TABLE}.hn ;;
  }

  dimension: hs {
    type: string
    sql: ${TABLE}.hs ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: pr {
    type: string
    sql: ${TABLE}.pr ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}.rn ;;
  }

  dimension: sp {
    type: string
    sql: ${TABLE}.sp ;;
  }

  dimension: st {
    type: number
    sql: ${TABLE}.st ;;
  }

  dimension: wk {
    type: number
    sql: ${TABLE}.wk ;;
  }
  measure: count {
    type: count
  }
}
