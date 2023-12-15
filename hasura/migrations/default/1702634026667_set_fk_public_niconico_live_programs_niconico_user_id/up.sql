alter table "public"."niconico_live_programs"
  add constraint "niconico_live_programs_niconico_user_id_fkey"
  foreign key ("niconico_user_id")
  references "public"."niconico_users"
  ("id") on update cascade on delete cascade;
