alter table "public"."niconico_user_icons" alter column "remote_updated_at" drop not null;
alter table "public"."niconico_user_icons" add column "remote_updated_at" timestamptz;
