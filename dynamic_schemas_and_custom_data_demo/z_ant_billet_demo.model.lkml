connection: "looker-private-demo"

include: "/dynamic_schemas_and_custom_data_demo/*.view.lkml"

explore: order_items {
  label: "Zz) Ant Billet Dynamic Schemas and Custom Data Demo"
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
