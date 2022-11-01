alter table item_comment modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table item_img modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table item_param modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table item_spec modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table `order` modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table order_item modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table order_status modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';
alter table user_address modify is_valid int(1) NOT NULL DEFAULT 1 COMMENT '是否有效';


