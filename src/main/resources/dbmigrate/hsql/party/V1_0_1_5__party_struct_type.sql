

ALTER TABLE PARTY_STRUCT_TYPE DROP CONSTRAINT FK_PARTY_STRUCT_TYPE_DIM;
ALTER TABLE PARTY_STRUCT_TYPE DROP COLUMN DIM_ID;
ALTER TABLE PARTY_STRUCT_TYPE ADD COLUMN PRIORITY INT;

COMMENT ON COLUMN PARTY_STRUCT_TYPE.PRIORITY IS '排序';

