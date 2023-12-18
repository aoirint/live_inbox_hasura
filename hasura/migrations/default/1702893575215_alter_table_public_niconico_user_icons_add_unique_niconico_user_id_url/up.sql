alter table "public"."niconico_user_icons" add constraint "niconico_user_icons_niconico_user_id_url_key" unique ("niconico_user_id", "url");
