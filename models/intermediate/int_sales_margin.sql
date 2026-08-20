select 
s.quantity * p.purchase_price as purchase_price_maliyet,
s.revenue - (s.quantity * p.purchase_price) as marj
from {{ ref('stg_raw__sales') }} as s
left join {{ ref('stg_raw__product') }} as p
  on s.products_id = p.products_id