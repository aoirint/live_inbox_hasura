alter table "public"."niconico_user_icons" alter column "remote_niconico_user_id" drop not null;
alter table "public"."niconico_user_icons" add column "remote_niconico_user_id" text;
