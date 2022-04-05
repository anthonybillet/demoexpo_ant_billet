include: "/dynamic_schemas_and_custom_data_demo/base_views(shared_columns)/order_items.view.lkml"

# the "+" indicates a refinement, any changes here will append the base view
view: +order_items {

  dimension: customer_2_specific_column {
    required_access_grants: [custiomer_2_data]
    type: string
    sql: "Customer 2's Cool Data" ;;
  }

}
