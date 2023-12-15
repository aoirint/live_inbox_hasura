alter table "public"."niconico_user_icons"
  add constraint "niconico_user_icons_niconico_user_id_fkey"
  foreign key ("niconico_user_id")
  references "public"."niconico_users"
  ("id") on update cascade on delete cascade;
