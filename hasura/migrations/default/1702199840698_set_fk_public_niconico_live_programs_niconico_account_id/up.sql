alter table "public"."niconico_live_programs"
  add constraint "niconico_live_programs_niconico_account_id_fkey"
  foreign key ("niconico_account_id")
  references "public"."niconico_accounts"
  ("id") on update cascade on delete cascade;
