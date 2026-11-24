{{ dbt_utils.deduplicate(
    relation=ref('orders_items'),
    partition_by='orderitemid',
    order_by='updated_at desc'
   )
}}