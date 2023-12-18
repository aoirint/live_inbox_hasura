alter table "public"."niconico_live_programs" add column "remote_niconico_user_id" text
 not null unique;
