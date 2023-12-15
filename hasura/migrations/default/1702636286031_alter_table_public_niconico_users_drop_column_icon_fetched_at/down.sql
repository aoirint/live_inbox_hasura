alter table "public"."niconico_users" alter column "icon_fetched_at" drop not null;
alter table "public"."niconico_users" add column "icon_fetched_at" timestamptz;
