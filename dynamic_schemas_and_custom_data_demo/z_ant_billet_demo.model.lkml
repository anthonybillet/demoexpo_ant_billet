connection: "looker-private-demo"

include: "/dynamic_schemas_and_custom_data_demo/**/*.view.lkml"



# these allow us to lock down columns or entire tables based on user attributes
access_grant: custiomer_1_data {
  allowed_values: ["Customer 1"]
  user_attribute: demo_customer_name
}

access_grant: custiomer_2_data {
  allowed_values: ["Customer 2"]
  user_attribute: demo_customer_name
}



explore: order_items {
  label: "Zz) Ant Billet Dynamic Schemas and Custom Data Demo"
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
