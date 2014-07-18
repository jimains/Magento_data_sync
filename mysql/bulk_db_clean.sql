SET foreign_key_checks = 0;
TRUNCATE `customer_address_entity`;
TRUNCATE `customer_address_entity_datetime`;
TRUNCATE `customer_address_entity_decimal`;
TRUNCATE `customer_address_entity_int`;
TRUNCATE `customer_address_entity_text`;
TRUNCATE `customer_address_entity_varchar`;
TRUNCATE `customer_entity`;
TRUNCATE `customer_entity_datetime`;
TRUNCATE `customer_entity_decimal`;
TRUNCATE `customer_entity_int`;
TRUNCATE `customer_entity_text`;
TRUNCATE `customer_entity_varchar`;
TRUNCATE `report_event`;
TRUNCATE `report_viewed_product_index`;
TRUNCATE `sales_flat_order`;
TRUNCATE `sales_flat_order_address`;
TRUNCATE `sales_flat_order_grid`;
TRUNCATE `sales_flat_order_item`;
TRUNCATE `sales_flat_order_payment`;
TRUNCATE `sales_flat_order_status_history`;
TRUNCATE `sales_flat_quote`;
TRUNCATE `sales_flat_quote_address`;
TRUNCATE `sales_flat_quote_address_item`;
TRUNCATE `sales_flat_quote_item`;
TRUNCATE `sales_flat_quote_item_option`;
TRUNCATE `sales_flat_quote_payment`;
TRUNCATE `sales_flat_quote_shipping_rate`;
TRUNCATE `sendfriend_log`;
TRUNCATE `tag`;
TRUNCATE `tag_relation`;
TRUNCATE `tag_summary`;
TRUNCATE `tag_properties`;
TRUNCATE `wishlist`;

TRUNCATE `sales_flat_invoice_comment`;
TRUNCATE `sales_flat_invoice_grid`;
TRUNCATE `sales_flat_invoice_item`;
TRUNCATE `sales_flat_shipment`;
TRUNCATE `sales_flat_shipment_comment`;
TRUNCATE `sales_flat_shipment_grid`;
TRUNCATE `sales_flat_shipment_item`;
TRUNCATE `sales_flat_shipment_track`;

TRUNCATE `catalogsearch_fulltext`;
TRUNCATE `catalogsearch_query`;
TRUNCATE `catalogsearch_result`;
truncate core_url_rewrite;

truncate sales_flat_creditmemo;
truncate sales_flat_creditmemo_grid;
truncate newsletter_subscriber;

truncate enterprise_logging_event;
truncate enterprise_rma;
truncate enterprise_rma_grid;
truncate enterprise_rma_item_entity    ;
truncate enterprise_rma_item_entity_datetime     ;
truncate enterprise_rma_item_entity_decimal      ;
truncate enterprise_rma_item_entity_int;
truncate enterprise_rma_item_entity_text         ;
truncate enterprise_rma_item_entity_varchar      ;
truncate enterprise_rma_shipping_label ;
truncate enterprise_rma_status_history ;
truncate enterprise_sales_creditmemo_grid_archive;
truncate enterprise_sales_invoice_grid_archive   ;
truncate enterprise_sales_order_grid_archive     ;
truncate enterprise_sales_shipment_grid_archive  ;

truncate sales_payment_transaction;

truncate smartpay_trans;

truncate catalog_category_flat_store_1;
truncate catalog_category_flat_store_2;

truncate catalog_product_flat_1;
truncate catalog_product_flat_2;

truncate catalog_product_index_price;
truncate catalog_product_index_price_idx;

truncate catalog_category_product_index;

truncate dataflow_batch_export;
truncate dataflow_batch_import;

truncate index_event;

truncate sales_flat_creditmemo_item;
truncate sales_flat_invoice;

truncate core_session;
truncate core_cache_tag;

drop table if exists api2_acl_user;
drop table if exists api2_acl_rule;
drop table if exists api2_acl_role;

drop table if exists oauth_token;

drop table if exists admin_rule;
drop table if exists admin_role;
drop table if exists adminnotification_inbox;
drop table if exists admin_user;