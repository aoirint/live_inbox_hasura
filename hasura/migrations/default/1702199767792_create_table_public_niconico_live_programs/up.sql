CREATE TABLE "public"."niconico_live_programs" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "remote_niconico_content_id" text NOT NULL, "title" text NOT NULL, "status" text NOT NULL, "last_fetch_time" timestamptz NOT NULL, "start_time" timestamptz NOT NULL, "end_time" timestamptz, PRIMARY KEY ("id") , UNIQUE ("remote_niconico_content_id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_niconico_live_programs_updated_at"
BEFORE UPDATE ON "public"."niconico_live_programs"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_niconico_live_programs_updated_at" ON "public"."niconico_live_programs"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
