/*
    Data machine-extracted from shx_link.h
    with some manual polish applied.
*/

insert into class values (1, '');
insert into method0 values (1, 1, -1, 'destruct', 'void %s');
insert into class values (2, 'DotCommand');
insert into method0 values (2, 2, 1, 'name', 'const char *%s');
insert into method0 values (3, 2, 2, 'help', 'const char *%s');
insert into argument values (1, 3, 1, 'zWhat', 'const char *%s');
insert into method0 values (4, 2, 3, 'argsCheck', 'DotCmdRC %s');
insert into argument values (2, 4, 1, 'pzErrMsg', 'char **%s');
insert into argument values (3, 4, 2, 'nArgs', 'int %s');
insert into argument values (4, 4, 3, 'azArgs', 'char *%s[]');
insert into method0 values (5, 2, 4, 'execute', 'DotCmdRC %s');
insert into argument values (5, 5, 1, 'pSES', 'ShellExState *%s');
insert into argument values (6, 5, 2, 'pzErrMsg', 'char **%s');
insert into argument values (7, 5, 3, 'nArgs', 'int %s');
insert into argument values (8, 5, 4, 'azArgs', 'char *%s[]');
insert into class values (3, 'ExportHandler');
insert into method0 values (6, 3, 1, 'name', 'const char *%s');
insert into method0 values (7, 3, 2, 'help', 'const char *%s');
insert into argument values (9, 7, 1, 'zWhat', 'const char *%s');
insert into method0 values (8, 3, 3, 'config', 'int %s');
insert into argument values (10, 8, 1, 'io', 'int %s');
insert into argument values (11, 8, 2, 'pzTell', 'char **%s');
insert into method0 values (9, 3, 4, 'openResultsOutStream', 'int %s');
insert into argument values (12, 9, 1, 'pSES', 'ShellExState *%s');
insert into argument values (13, 9, 2, 'pzErr', 'char **%s');
insert into argument values (14, 9, 3, 'numArgs', 'int %s');
insert into argument values (15, 9, 4, 'azArgs', 'char *%s[]');
insert into argument values (16, 9, 5, 'zName', 'const char *%s');
insert into method0 values (10, 3, 5, 'prependResultsOut', 'int %s');
insert into argument values (17, 10, 1, 'pSES', 'ShellExState *%s');
insert into argument values (18, 10, 2, 'pzErr', 'char **%s');
insert into argument values (19, 10, 3, 'pStmt', 'sqlite3_stmt *%s');
insert into method0 values (11, 3, 6, 'rowResultsOut', 'int %s');
insert into argument values (20, 11, 1, 'pSES', 'ShellExState *%s');
insert into argument values (21, 11, 2, 'pzErr', 'char **%s');
insert into argument values (22, 11, 3, 'pStmt', 'sqlite3_stmt *%s');
insert into method0 values (12, 3, 7, 'appendResultsOut', 'int %s');
insert into argument values (23, 12, 1, 'pSES', 'ShellExState *%s');
insert into argument values (24, 12, 2, 'pzErr', 'char **%s');
insert into argument values (25, 12, 3, 'pStmt', 'sqlite3_stmt *%s');
insert into method0 values (13, 3, 8, 'closeResultsOutStream', 'void %s');
insert into argument values (26, 13, 1, 'pSES', 'ShellExState *%s');
insert into argument values (27, 13, 2, 'pzErr', 'char **%s');
insert into class values (4, 'ImportHandler');
insert into method0 values (14, 4, 1, 'name', 'const char *%s');
insert into method0 values (15, 4, 2, 'help', 'const char *%s');
insert into argument values (28, 15, 1, 'zWhat', 'const char *%s');
insert into method0 values (16, 4, 3, 'config', 'int %s');
insert into argument values (29, 16, 1, 'io', 'int %s');
insert into argument values (30, 16, 2, 'pzTell', 'char **%s');
insert into method0 values (17, 4, 4, 'openDataInStream', 'int %s');
insert into argument values (31, 17, 1, 'pSES', 'ShellExState *%s');
insert into argument values (32, 17, 2, 'pzErr', 'char **%s');
insert into argument values (33, 17, 3, 'numArgs', 'int %s');
insert into argument values (34, 17, 4, 'azArgs', 'char *%s[]');
insert into argument values (35, 17, 5, 'zName', 'const char *%s');
insert into method0 values (18, 4, 5, 'prepareDataInput', 'int %s');
insert into argument values (36, 18, 1, 'pSES', 'ShellExState *%s');
insert into argument values (37, 18, 2, 'pzErr', 'char **%s');
insert into argument values (38, 18, 3, 'ppStmt', 'sqlite3_stmt **%s');
insert into method0 values (19, 4, 6, 'rowDataInput', 'int %s');
insert into argument values (39, 19, 1, 'pSES', 'ShellExState *%s');
insert into argument values (40, 19, 2, 'pzErr', 'char **%s');
insert into argument values (41, 19, 3, 'pStmt', 'sqlite3_stmt *%s');
insert into method0 values (20, 4, 7, 'finishDataInput', 'int %s');
insert into argument values (42, 20, 1, 'pSES', 'ShellExState *%s');
insert into argument values (43, 20, 2, 'pzErr', 'char **%s');
insert into argument values (44, 20, 3, 'pStmt', 'sqlite3_stmt *%s');
insert into method0 values (21, 4, 8, 'closeDataInStream', 'void %s');
insert into argument values (45, 21, 1, 'pSES', 'ShellExState *%s');
insert into argument values (46, 21, 2, 'pzErr', 'char **%s');
insert into class values (5, 'ScriptSupport');
insert into method0 values (22, 5, 1, 'name', 'const char *%s');
insert into method0 values (23, 5, 2, 'help', 'const char *%s');
insert into argument values (47, 23, 1, 'zWhat', 'const char *%s');
insert into method0 values (24, 5, 3, 'configure', 'int %s');
insert into argument values (48, 24, 1, 'pSES', 'ShellExState *%s');
insert into argument values (49, 24, 2, 'pzErr', 'char **%s');
insert into argument values (50, 24, 3, 'numArgs', 'int %s');
insert into argument values (51, 24, 4, 'azArgs', 'char *%s[]');
insert into method0 values (25, 5, 4, 'isScriptLeader', 'int %s');
insert into argument values (52, 25, 1, 'zScript', 'const char *%s');
insert into method0 values (26, 5, 5, 'scriptIsComplete', 'int %s');
insert into argument values (53, 26, 1, 'zScript', 'const char *%s');
insert into argument values (54, 26, 2, 'pzWhyNot', 'char **%s');
insert into method0 values (27, 5, 6, 'resetCompletionScan', 'void %s');
insert into method0 values (28, 5, 7, 'runScript', 'DotCmdRC %s');
insert into argument values (55, 28, 1, 'zScript', 'const char *%s');
insert into argument values (56, 28, 2, 'pSES', 'ShellExState *%s');
insert into argument values (57, 28, 3, 'pzErr', 'char **%s');
