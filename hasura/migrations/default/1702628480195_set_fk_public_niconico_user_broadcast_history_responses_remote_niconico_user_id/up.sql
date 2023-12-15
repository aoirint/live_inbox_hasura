alter table "public"."niconico_user_broadcast_history_responses"
  add constraint "niconico_user_broadcast_history_responses_remote_niconico_us"
  foreign key ("remote_niconico_user_id")
  references "public"."niconico_users"
  ("remote_niconico_user_id") on update cascade on delete cascade;
