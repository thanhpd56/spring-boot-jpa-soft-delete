DROP TABLE IF EXISTS permission;
CREATE TABLE permission (
  id         BIGSERIAL,
  name       VARCHAR(60)                                        NOT NULL,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  deleted_on TIMESTAMP WITH TIME ZONE,
  created_by BIGINT,
  updated_by BIGINT,
  version    BIGINT DEFAULT '0'                                 NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT name_UNIQUE UNIQUE (name)
);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 'P_ACTIVE', '2016-12-05 23:21:16', '2016-12-05 23:21:16', NULL, NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 'P_ACTIVE_2', '2016-12-05 23:21:16', '2016-12-05 23:21:16', NULL, NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 'P_ACTIVE_3', '2016-12-05 23:21:16', '2016-12-05 23:21:16', NULL, NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (4, 'P_DELETED', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2016-12-05 23:21:16', NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (5, 'P_DELETED_2', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2016-12-05 23:21:16', NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (6, 'P_DELETED_3', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2016-12-05 23:21:16', NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (7, 'P_SCHEDULED_DELETE', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2100-12-05 23:21:16', NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (8, 'P_SCHEDULED_DELETE_2', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2100-12-05 23:21:16', NULL, NULL, 0);
INSERT INTO permission (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (9, 'P_SCHEDULED_DELETE_3', '2016-12-05 23:21:16', '2016-12-05 23:21:46', '2100-12-05 23:21:16', NULL, NULL, 0);
DROP TABLE IF EXISTS permission_role;
CREATE TABLE permission_role (
  permission_id BIGINT                                             NOT NULL,
  role_id       BIGINT                                             NOT NULL,
  created_on    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_on    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  deleted_on    TIMESTAMP WITH TIME ZONE,
  created_by    BIGINT,
  updated_by    BIGINT,
  version       BIGINT DEFAULT '0'                                 NOT NULL,
  PRIMARY KEY (permission_id, role_id)
);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 1, '2016-12-05 23:26:46', '2016-12-05 23:26:46', NULL, NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 1, '2016-12-05 23:26:46', '2016-12-05 23:27:17', '2016-12-05 23:26:46', NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 1, '2016-12-05 23:26:46', '2016-12-05 23:27:17', '2100-12-05 23:26:46', NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (4, 1, '2016-12-05 23:26:46', '2016-12-05 23:26:46', NULL, NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (7, 1, '2016-12-05 23:26:46', '2016-12-05 23:27:17', '2100-12-05 23:26:46', NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (8, 1, '2016-12-05 23:26:46', '2016-12-05 23:27:17', '2100-12-05 23:26:46', NULL, NULL, 0);
INSERT INTO permission_role (permission_id, role_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (9, 1, '2016-12-05 23:26:46', '2016-12-05 23:27:17', '2016-12-05 23:26:46', NULL, NULL, 0);
DROP TABLE IF EXISTS role;
CREATE TABLE role (
  id         BIGSERIAL,
  name       VARCHAR(60)                                        NOT NULL,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  deleted_on TIMESTAMP WITH TIME ZONE,
  created_by BIGINT,
  updated_by BIGINT,
  version    BIGINT DEFAULT '0'                                 NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 'ROLE_ACTIVE', '2016-12-05 23:19:40', '2016-12-05 23:19:40', NULL, NULL, NULL, 0);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 'ROLE_ACTIVE_2', '2016-12-05 23:19:40', '2016-12-05 23:19:40', NULL, NULL, NULL, 0);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 'ROLE_DELETED', '2016-12-05 23:19:40', '2016-12-05 23:20:03', '2016-12-05 23:19:40', NULL, NULL, 0);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (4, 'ROLE_DELETED_2', '2016-12-05 23:19:40', '2016-12-05 23:20:03', '2016-12-05 23:19:40', NULL, NULL, 0);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (5, 'ROLE_SCHEDULED_DELETE', '2016-12-05 23:19:40', '2016-12-05 23:20:03', '2100-12-05 23:19:40', NULL, NULL, 0);
INSERT INTO role (id, name, created_on, updated_on, deleted_on, created_by, updated_by, version) VALUES
  (6, 'ROLE_SCHEDULED_DELETE_2', '2016-12-05 23:19:40', '2016-12-05 23:20:03', '2100-12-05 23:19:40', NULL, NULL, 0);
DROP TABLE IF EXISTS role_user;
CREATE TABLE role_user (
  role_id    BIGINT                                             NOT NULL,
  user_id    BIGINT                                             NOT NULL,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  deleted_on TIMESTAMP WITH TIME ZONE,
  created_by BIGINT,
  updated_by BIGINT,
  version    BIGINT DEFAULT '0'                                 NOT NULL,
  PRIMARY KEY (role_id, user_id)
);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 1, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 2, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 3, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 1, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 2, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 3, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 1, '2016-12-05 23:24:32', '2016-12-05 23:25:29', '2016-12-05 23:24:32', NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 2, '2016-12-05 23:24:32', '2016-12-05 23:24:32', NULL, NULL, NULL, 0);
INSERT INTO role_user (role_id, user_id, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 3, '2016-12-05 23:24:32', '2016-12-05 23:25:29', '2100-12-05 23:24:32', NULL, NULL, 0);
DROP TABLE IF EXISTS "user";
CREATE TABLE "user" (
  id         BIGSERIAL,
  username   VARCHAR(24)                                        NOT NULL,
  password   VARCHAR(60)                                        NOT NULL,
  email      VARCHAR(255)                                       NOT NULL,
  created_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_on TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
  deleted_on TIMESTAMP WITH TIME ZONE,
  created_by BIGINT,
  updated_by BIGINT,
  version    BIGINT DEFAULT '0'                                 NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO "user" (id, username, password, email, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (1, 'userActive', '$2a$10$xdjoYQgKNnlAWV.vBd4jC.wpLlbkW0FkOzZPEHhZN37OiySuQQ6wi', 'useractive@example.com',
        '2016-12-05 23:16:22', '2016-12-05 23:16:22', NULL, NULL, NULL, 0);
INSERT INTO "user" (id, username, password, email, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (2, 'userDeleted', '$2a$10$BudzAdPY785cCMI6S5nTvemXrP7Iu.6TtbaKSPsAYLMO8bNWRppW.', 'userdeleted@example.com',
        '2016-12-05 23:16:22', '2016-12-05 23:16:50', '2016-12-05 23:16:22', NULL, NULL, 0);
INSERT INTO "user" (id, username, password, email, created_on, updated_on, deleted_on, created_by, updated_by, version)
VALUES (3, 'userScheduledDelete', '$2a$10$GPcf0/6W3yOB5UPNl3FxHuXSqKZA3Y3/9VLWonLfLstwFJk8enRcS',
        'userscheduled@example.com', '2016-12-05 23:16:22', '2016-12-05 23:16:50', '2100-12-05 23:16:22', NULL, NULL,
        0);
ALTER TABLE permission_role
  ADD CONSTRAINT permission_role_fk1 FOREIGN KEY (permission_id) REFERENCES permission (id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE permission_role
  ADD CONSTRAINT permission_role_fk2 FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE role_user
  ADD CONSTRAINT role_user_fk1 FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE role_user
  ADD CONSTRAINT role_user_fk2 FOREIGN KEY (user_id) REFERENCES "user" (id) ON DELETE CASCADE ON UPDATE CASCADE;
