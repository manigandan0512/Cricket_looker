# The name of this view in Looker is "Test Batting"
view: test_batting {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Cricket_details.Test_batting` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " 0s" in Explore.

  dimension: _0s {
    type: number
    sql: ${TABLE}._0s ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__0s {
    type: sum
    sql: ${_0s} ;;  }
  measure: average__0s {
    type: average
    sql: ${_0s} ;;  }

  dimension: _100s {
    type: number
    sql: ${TABLE}._100s ;;
  }

  dimension: _4s {
    type: number
    sql: ${TABLE}._4s ;;
  }

  dimension: _50 {
    type: number
    sql: ${TABLE}._50 ;;
  }

  dimension: _6s {
    type: number
    sql: ${TABLE}._6s ;;
  }

  dimension: average_score {
    type: number
    sql: ${TABLE}.average_score ;;
  }

  dimension: ball_faced {
    type: number
    sql: ${TABLE}.ball_faced ;;
  }

  dimension: high_score {
    type: string
    sql: ${TABLE}.high_score ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: innings {
    type: number
    sql: ${TABLE}.innings ;;
  }

  dimension: matches {
    type: number
    sql: ${TABLE}.matches ;;
  }

  dimension: not_out {
    type: number
    sql: ${TABLE}.not_out ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.runs ;;
  }

  dimension: span {
    type: string
    sql: ${TABLE}.span ;;
  }

  dimension: strike_rate {
    type: number
    sql: ${TABLE}.strike_rate ;;
  }
  measure: count {
    type: count
  }
}
