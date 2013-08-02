package DBD::Unify::GetInfo;

# The %info hash was automatically generated by
# DBI::DBD::Metadata::write_getinfo_pm v2.008696.
# And manually reformatted into readable style

our $VERSION = $DBD::Unify::VERSION;

use strict;
use warnings;

use DBD::Unify;

# Beware: not officially documented interfaces...
# use DBI::Const::GetInfoType qw(%GetInfoType);
# use DBI::Const::GetInfoReturn qw(%GetInfoReturnTypes %GetInfoReturnValues);

my $sql_driver     = "Unify";
my $sql_ver_fmt    = "%02d.%02d.0000";   # ODBC version string: ##.##.#####
my $sql_driver_ver = sprintf $sql_ver_fmt, split m/\./, $DBD::Unify::VERSION;

my @Keywords = qw(
    ACCESS AMOUNT ANSI AUTO
    BASE BINARY BTREE BUFFER BYTE
    COBOL COLUMNS CONFIGURATION CONST CONTIGUOUS CURAID CURRENCY
    DATA DATABASE DATETIME DBA DEFER DEMOTING DESCRIPTION DEVICE DIRECT DISPLAY
	DOUBLE_PRECISION
    EDIT ESTIMATED EXTERN
    FILEFIXED FORCE
    HASH HELP HUGE
    INDICATOR_TYPE
    LENGTH LINES LINK LOCKS LOGID LOGNAME LONG
    MODE MOVE
    OFFSET OVERFLOW OVERWRITE OWNER
    PATH PIC PICTURE PLI PREALLOCATED PREFERRED PRIVATE
    RECOVERABLE REGLIKE RELEASING RENAME RESTART ROOT ROWID
    SCAN SCATTERED SCHEMAS SEGMENT SEPARATE SEPARATOR SHLIKE SHORT SIGN SLOCK
	SPLIT SQLCODE_TYPE SQL_STANDARD START STATIC STOP SYNONYM
    TABLES TEXT TRIGGER TYPE
    UAMT UAMT64 UBINBUF UCHAR UDATE UHAMT UHDATE UINT64 UNIFY_2000 UNLIMITED
	UNLOCK USE UTIME UTXTBUF
    VOID VOLATILE VOLUME VOLUMES
    XLOCK
    );

sub sql_keywords
{
    return join ",", @Keywords;
    } # sql_keywords

sub sql_data_source_name
{
    my $dbh = shift;
    return "dbi:$sql_driver:" . $dbh->{Name};
    } # sql_data_source_name

sub sql_user_name
{
    my $dbh = shift;
    # CURRENT_USER is a non-standard attribute, probably undef
    # Username is a standard DBI attribute
    return $dbh->{CURRENT_USER} || $dbh->{Username};
    } # sql_user_name

our %info = (
     20 => "Y",                           # SQL_ACCESSIBLE_PROCEDURES
     19 => "Y",                           # SQL_ACCESSIBLE_TABLES
      0 => 1,                             # SQL_ACTIVE_CONNECTIONS
#   116 => undef,                         # SQL_ACTIVE_ENVIRONMENTS
      1 => 0,                             # SQL_ACTIVE_STATEMENTS
#   169 => undef,                         # SQL_AGGREGATE_FUNCTIONS
#   117 => undef,                         # SQL_ALTER_DOMAIN
     86 => 3,                             # SQL_ALTER_TABLE
# 10021 => undef,                         # SQL_ASYNC_MODE
#   120 => undef,                         # SQL_BATCH_ROW_COUNT
#   121 => undef,                         # SQL_BATCH_SUPPORT
     82 => 0,                             # SQL_BOOKMARK_PERSISTENCE
#   114 => 0,                             # SQL_CATALOG_LOCATION
# 10003 => undef,                         # SQL_CATALOG_NAME
#    41 => "",                            # SQL_CATALOG_NAME_SEPARATOR
#    42 => "",                            # SQL_CATALOG_TERM
#    92 => 0,                             # SQL_CATALOG_USAGE
# 10004 => undef,                         # SQL_COLLATING_SEQUENCE
# 10004 => undef,                         # SQL_COLLATION_SEQ
     87 => "N",                           # SQL_COLUMN_ALIAS
     22 => 1,                             # SQL_CONCAT_NULL_BEHAVIOR
     53 => 0,                             # SQL_CONVERT_BIGINT
     54 => 0,                             # SQL_CONVERT_BINARY
     55 => 0,                             # SQL_CONVERT_BIT
     56 => 0,                             # SQL_CONVERT_CHAR
     57 => 0,                             # SQL_CONVERT_DATE
     58 => 0,                             # SQL_CONVERT_DECIMAL
     59 => 0,                             # SQL_CONVERT_DOUBLE
     60 => 0,                             # SQL_CONVERT_FLOAT
     48 => 0,                             # SQL_CONVERT_FUNCTIONS
#   173 => undef,                         # SQL_CONVERT_GUID
     61 => 0,                             # SQL_CONVERT_INTEGER
#   123 => undef,                         # SQL_CONVERT_INTERVAL_DAY_TIME
#   124 => undef,                         # SQL_CONVERT_INTERVAL_YEAR_MONTH
     71 => 0,                             # SQL_CONVERT_LONGVARBINARY
     62 => 0,                             # SQL_CONVERT_LONGVARCHAR
     63 => 0,                             # SQL_CONVERT_NUMERIC
     64 => 0,                             # SQL_CONVERT_REAL
     65 => 0,                             # SQL_CONVERT_SMALLINT
     66 => 0,                             # SQL_CONVERT_TIME
     67 => 0,                             # SQL_CONVERT_TIMESTAMP
     68 => 0,                             # SQL_CONVERT_TINYINT
     69 => 0,                             # SQL_CONVERT_VARBINARY
     70 => 0,                             # SQL_CONVERT_VARCHAR
#   122 => undef,                         # SQL_CONVERT_WCHAR
#   125 => undef,                         # SQL_CONVERT_WLONGVARCHAR
#   126 => undef,                         # SQL_CONVERT_WVARCHAR
     74 => 2,                             # SQL_CORRELATION_NAME
#   127 => undef,                         # SQL_CREATE_ASSERTION
#   128 => undef,                         # SQL_CREATE_CHARACTER_SET
#   129 => undef,                         # SQL_CREATE_COLLATION
#   130 => undef,                         # SQL_CREATE_DOMAIN
#   131 => undef,                         # SQL_CREATE_SCHEMA
#   132 => undef,                         # SQL_CREATE_TABLE
#   133 => undef,                         # SQL_CREATE_TRANSLATION
#   134 => undef,                         # SQL_CREATE_VIEW
     23 => 0,                             # SQL_CURSOR_COMMIT_BEHAVIOR
     24 => 0,                             # SQL_CURSOR_ROLLBACK_BEHAVIOR
# 10001 => undef,                         # SQL_CURSOR_SENSITIVITY
     16 => "$ENV{DBPATH}/file.db",        # SQL_DATABASE_NAME
      2 => \&sql_data_source_name,        # SQL_DATA_SOURCE_NAME
     25 => "N",                           # SQL_DATA_SOURCE_READ_ONLY
#   119 => undef,                         # SQL_DATETIME_LITERALS
     17 => "Unify DataServer",            # SQL_DBMS_NAME
#    18 => "08.03.0000",                  # SQL_DBMS_VER
#    18 => "08.03.0000",                  # SQL_DBMS_VERSION
#   170 => undef,                         # SQL_DDL_INDEX
     26 => 8,                             # SQL_DEFAULT_TRANSACTION_ISOLATION
     26 => 8,                             # SQL_DEFAULT_TXN_ISOLATION
# 10002 => undef,                         # SQL_DESCRIBE_PARAMETER
    171 => "03.52.1132.0000",             # SQL_DM_VER
      3 => 2388864,                       # SQL_DRIVER_HDBC
#   135 => undef,                         # SQL_DRIVER_HDESC
      4 => 2388832,                       # SQL_DRIVER_HENV
#    76 => undef,                         # SQL_DRIVER_HLIB
#     5 => undef,                         # SQL_DRIVER_HSTMT
      6 => $INC{"DBD/Unify.pm"},          # SQL_DRIVER_NAME
     77 => "02.50",                       # SQL_DRIVER_ODBC_VER
      7 => $sql_driver_ver,               # SQL_DRIVER_VER
#   136 => undef,                         # SQL_DROP_ASSERTION
#   137 => undef,                         # SQL_DROP_CHARACTER_SET
#   138 => undef,                         # SQL_DROP_COLLATION
#   139 => undef,                         # SQL_DROP_DOMAIN
#   140 => undef,                         # SQL_DROP_SCHEMA
#   141 => undef,                         # SQL_DROP_TABLE
#   142 => undef,                         # SQL_DROP_TRANSLATION
#   143 => undef,                         # SQL_DROP_VIEW
    144 => 1,                             # SQL_DYNAMIC_CURSOR_ATTRIBUTES1
#   145 => undef,                         # SQL_DYNAMIC_CURSOR_ATTRIBUTES2
     27 => "Y",                           # SQL_EXPRESSIONS_IN_ORDERBY
      8 => 1,                             # SQL_FETCH_DIRECTION
     84 => 0,                             # SQL_FILE_USAGE
    146 => 1,                             # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES1
#   147 => undef,                         # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES2
     81 => 3,                             # SQL_GETDATA_EXTENSIONS
     88 => 2,                             # SQL_GROUP_BY
     28 => 3,                             # SQL_IDENTIFIER_CASE
     29 => '"',                           # SQL_IDENTIFIER_QUOTE_CHAR
#   148 => undef,                         # SQL_INDEX_KEYWORDS
#   149 => undef,                         # SQL_INFO_SCHEMA_VIEWS
#   172 => undef,                         # SQL_INSERT_STATEMENT
     73 => "N",                           # SQL_INTEGRITY
    150 => 1,                             # SQL_KEYSET_CURSOR_ATTRIBUTES1
#   151 => undef,                         # SQL_KEYSET_CURSOR_ATTRIBUTES2
     89 => \&sql_keywords,                # SQL_KEYWORDS
    113 => "N",                           # SQL_LIKE_ESCAPE_CLAUSE
     78 => 0,                             # SQL_LOCK_TYPES
#    34 => 18,                            # SQL_MAXIMUM_CATALOG_NAME_LENGTH
     97 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_GROUP_BY
     98 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_INDEX
     99 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_ORDER_BY
    100 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_SELECT
    101 => 0,                             # SQL_MAXIMUM_COLUMNS_IN_TABLE
     30 => 44,                            # SQL_MAXIMUM_COLUMN_NAME_LENGTH
      1 => 0,                             # SQL_MAXIMUM_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAXIMUM_CURSOR_NAME_LENGTH
      0 => 1,                             # SQL_MAXIMUM_DRIVER_CONNECTIONS
# 10005 => undef,                         # SQL_MAXIMUM_IDENTIFIER_LENGTH
    102 => 0,                             # SQL_MAXIMUM_INDEX_SIZE
    104 => 2147483647,                    # SQL_MAXIMUM_ROW_SIZE
     32 => 18,                            # SQL_MAXIMUM_SCHEMA_NAME_LENGTH
    105 => 8192,                          # SQL_MAXIMUM_STATEMENT_LENGTH
# 20000 => undef,                         # SQL_MAXIMUM_STMT_OCTETS
# 20001 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_DATA
# 20002 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_SCHEMA
    106 => 0,                             # SQL_MAXIMUM_TABLES_IN_SELECT
     35 => 44,                            # SQL_MAXIMUM_TABLE_NAME_LENGTH
    107 => 44,                            # SQL_MAXIMUM_USER_NAME_LENGTH
# 10022 => undef,                         # SQL_MAX_ASYNC_CONCURRENT_STATEMENTS
    112 => 255,                           # SQL_MAX_BINARY_LITERAL_LEN
#    34 => 18,                            # SQL_MAX_CATALOG_NAME_LEN
    108 => 255,                           # SQL_MAX_CHAR_LITERAL_LEN
     97 => 0,                             # SQL_MAX_COLUMNS_IN_GROUP_BY
     98 => 0,                             # SQL_MAX_COLUMNS_IN_INDEX
     99 => 0,                             # SQL_MAX_COLUMNS_IN_ORDER_BY
    100 => 0,                             # SQL_MAX_COLUMNS_IN_SELECT
    101 => 0,                             # SQL_MAX_COLUMNS_IN_TABLE
     30 => 44,                            # SQL_MAX_COLUMN_NAME_LEN
      1 => 0,                             # SQL_MAX_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAX_CURSOR_NAME_LEN
      0 => 1,                             # SQL_MAX_DRIVER_CONNECTIONS
# 10005 => undef,                         # SQL_MAX_IDENTIFIER_LEN
    102 => 0,                             # SQL_MAX_INDEX_SIZE
     32 => 18,                            # SQL_MAX_OWNER_NAME_LEN
     33 => 44,                            # SQL_MAX_PROCEDURE_NAME_LEN
     34 => 18,                            # SQL_MAX_QUALIFIER_NAME_LEN
    104 => 2147483647,                    # SQL_MAX_ROW_SIZE
    103 => "Y",                           # SQL_MAX_ROW_SIZE_INCLUDES_LONG
     32 => 18,                            # SQL_MAX_SCHEMA_NAME_LEN
    105 => 8192,                          # SQL_MAX_STATEMENT_LEN
    106 => 0,                             # SQL_MAX_TABLES_IN_SELECT
     35 => 44,                            # SQL_MAX_TABLE_NAME_LEN
    107 => 44,                            # SQL_MAX_USER_NAME_LEN
     37 => "Y",                           # SQL_MULTIPLE_ACTIVE_TXN
     36 => "N",                           # SQL_MULT_RESULT_SETS
    111 => "N",                           # SQL_NEED_LONG_DATA_LEN
     75 => 1,                             # SQL_NON_NULLABLE_COLUMNS
     85 => 1,                             # SQL_NULL_COLLATION
     49 => 0,                             # SQL_NUMERIC_FUNCTIONS
      9 => 2,                             # SQL_ODBC_API_CONFORMANCE
#   152 => undef,                         # SQL_ODBC_INTERFACE_CONFORMANCE
     12 => 1,                             # SQL_ODBC_SAG_CLI_CONFORMANCE
     15 => 1,                             # SQL_ODBC_SQL_CONFORMANCE
     73 => "N",                           # SQL_ODBC_SQL_OPT_IEF
     10 => "03.52.0000",                  # SQL_ODBC_VER
#   115 => undef,                         # SQL_OJ_CAPABILITIES
     90 => "Y",                           # SQL_ORDER_BY_COLUMNS_IN_SELECT
     38 => "N",                           # SQL_OUTER_JOINS
#   115 => undef,                         # SQL_OUTER_JOIN_CAPABILITIES
     39 => "Owner",                       # SQL_OWNER_TERM
     91 => 31,                            # SQL_OWNER_USAGE
#   153 => undef,                         # SQL_PARAM_ARRAY_ROW_COUNTS
#   154 => undef,                         # SQL_PARAM_ARRAY_SELECTS
     80 => 0,                             # SQL_POSITIONED_STATEMENTS
     79 => 0,                             # SQL_POS_OPERATIONS
     21 => "Y",                           # SQL_PROCEDURES
     40 => "Procedure",                   # SQL_PROCEDURE_TERM
    114 => 0,                             # SQL_QUALIFIER_LOCATION
     41 => ".",                           # SQL_QUALIFIER_NAME_SEPARATOR
     42 => "",                            # SQL_QUALIFIER_TERM
     92 => 0,                             # SQL_QUALIFIER_USAGE
     93 => 3,                             # SQL_QUOTED_IDENTIFIER_CASE
     11 => "Y",                           # SQL_ROW_UPDATES
     39 => "Owner",                       # SQL_SCHEMA_TERM
     91 => 31,                            # SQL_SCHEMA_USAGE
     43 => 1,                             # SQL_SCROLL_CONCURRENCY
     44 => 1,                             # SQL_SCROLL_OPTIONS
     14 => "\\",                          # SQL_SEARCH_PATTERN_ESCAPE
     13 => "",                            # SQL_SERVER_NAME
     94 => "",                            # SQL_SPECIAL_CHARACTERS
#   155 => undef,                         # SQL_SQL92_DATETIME_FUNCTIONS
#   156 => undef,                         # SQL_SQL92_FOREIGN_KEY_DELETE_RULE
#   157 => undef,                         # SQL_SQL92_FOREIGN_KEY_UPDATE_RULE
#   158 => undef,                         # SQL_SQL92_GRANT
#   159 => undef,                         # SQL_SQL92_NUMERIC_VALUE_FUNCTIONS
#   160 => undef,                         # SQL_SQL92_PREDICATES
#   161 => undef,                         # SQL_SQL92_RELATIONAL_JOIN_OPERATORS
#   162 => undef,                         # SQL_SQL92_REVOKE
#   163 => undef,                         # SQL_SQL92_ROW_VALUE_CONSTRUCTOR
#   164 => undef,                         # SQL_SQL92_STRING_FUNCTIONS
#   165 => undef,                         # SQL_SQL92_VALUE_EXPRESSIONS
#   118 => undef,                         # SQL_SQL_CONFORMANCE
#   166 => undef,                         # SQL_STANDARD_CLI_CONFORMANCE
    167 => 1,                             # SQL_STATIC_CURSOR_ATTRIBUTES1
#   168 => undef,                         # SQL_STATIC_CURSOR_ATTRIBUTES2
     83 => 0,                             # SQL_STATIC_SENSITIVITY
     50 => 0,                             # SQL_STRING_FUNCTIONS
     95 => 15,                            # SQL_SUBQUERIES
     51 => 0,                             # SQL_SYSTEM_FUNCTIONS
     45 => "Table",                       # SQL_TABLE_TERM
    109 => 0,                             # SQL_TIMEDATE_ADD_INTERVALS
    110 => 0,                             # SQL_TIMEDATE_DIFF_INTERVALS
     52 => 0,                             # SQL_TIMEDATE_FUNCTIONS
     46 => 1,                             # SQL_TRANSACTION_CAPABLE
     72 => 15,                            # SQL_TRANSACTION_ISOLATION_OPTION
     46 => 1,                             # SQL_TXN_CAPABLE
     72 => 15,                            # SQL_TXN_ISOLATION_OPTION
     96 => 3,                             # SQL_UNION
     96 => 3,                             # SQL_UNION_STATEMENT
     47 => \&sql_user_name,               # SQL_USER_NAME
# 10000 => undef,                         # SQL_XOPEN_CLI_YEAR
    );

1;