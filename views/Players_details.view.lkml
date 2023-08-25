# The name of this view in Looker is "All Players"
view: Player_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Cricket_details.all_players` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bating Style" in Explore.

  dimension: bating_style {
    type: string
    sql: ${TABLE}.bating_style ;;
  }

  dimension: bowling_style {
    type: string
    sql: ${TABLE}.bowling_style ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: playing_role {
    type: string
    sql: ${TABLE}.playing_role ;;
  }
  measure: count {
    type: count
    drill_fields: [name,bating_style,bowling_style]
  }
  measure: Gender_percentile {
    type: percent_of_total
    drill_fields: [gender]
  }
}
