# Define the database connection to be used for this model.
connection: "cricket"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: cricket_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cricket_default_datagroup


explore: Player_details {}
explore: country {}
explore: odi_batting{}
explore: t20_batting {}
explore: test_batting{}
