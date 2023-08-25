# The name of this view in Looker is "Fielding"
view: fielding {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Cricket_details.fielding` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cf" in Explore.

  dimension: cf {
    type: number
    sql: ${TABLE}.cf ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cf {
    type: sum
    sql: ${cf} ;;  }
  measure: average_cf {
    type: average
    sql: ${cf} ;;  }

  dimension: ck {
    type: number
    sql: ${TABLE}.ck ;;
  }

  dimension: ct {
    type: number
    sql: ${TABLE}.ct ;;
  }

  dimension: ds {
    type: number
    sql: ${TABLE}.ds ;;
  }

  dimension: dspi {
    type: number
    sql: ${TABLE}.dspi ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: mds {
    type: string
    sql: ${TABLE}.mds ;;
  }

  dimension: mt {
    type: number
    sql: ${TABLE}.mt ;;
  }

  dimension: pr {
    type: string
    sql: ${TABLE}.pr ;;
  }

  dimension: sp {
    type: string
    sql: ${TABLE}.sp ;;
  }

  dimension: st {
    type: number
    sql: ${TABLE}.st ;;
  }
  measure: count {
    type: count
  }
}
