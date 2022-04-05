include: "/dynamic_schemas_and_custom_data_demo/base_views(shared_columns)/order_items.view.lkml"

# the "+" indicates a refinement, any changes here will append the base view
view: +order_items {

  dimension: customer_1_specific_column {
    #this means only customers with the user attribute customer name=customer 1 can see this column
    required_access_grants: [custiomer_1_data]
    type: string
    sql: "Customer 1's Cool Data" ;;
  }

}
