alter table "public"."niconico_user_icons" alter column "is_content_fetched" set default false;
alter table "public"."niconico_user_icons" alter column "is_content_fetched" drop not null;
alter table "public"."niconico_user_icons" add column "is_content_fetched" bool;
