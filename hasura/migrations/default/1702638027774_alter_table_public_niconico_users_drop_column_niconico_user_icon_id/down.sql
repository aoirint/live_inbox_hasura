alter table "public"."niconico_users" alter column "niconico_user_icon_id" drop not null;
alter table "public"."niconico_users" add column "niconico_user_icon_id" uuid;
