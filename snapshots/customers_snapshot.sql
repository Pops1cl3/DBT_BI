{% snapshot customers_snapshot %}

{{
    config(
      target_schema='silver',
      unique_key='customerid',  
      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from bronze.customers

{% endsnapshot %}