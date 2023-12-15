alter table "public"."niconico_users" alter column "icon_url" drop not null;
alter table "public"."niconico_users" add column "icon_url" text;
