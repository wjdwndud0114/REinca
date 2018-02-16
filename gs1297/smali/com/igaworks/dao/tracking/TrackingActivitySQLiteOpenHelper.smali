.class public Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;
.super Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;
.source "TrackingActivitySQLiteOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "IgawTrackingActivitySQLiteDB.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final IP_CAMPAIGN_KEY:Ljava/lang/String; = "campaign_key"

.field public static final IP_CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final IP_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final IP_IS_FIRST_TIME:Ljava/lang/String; = "isFirstTime"

.field public static final IP_RESOURCE_KEY:Ljava/lang/String; = "resource_key"

.field public static final IP_SPACE_KEY:Ljava/lang/String; = "space_key"

.field public static final KEY_ID:Ljava/lang/String; = "Id"

.field static final KEY_ISDIRTY:Ljava/lang/String; = "isDirty"

.field static final KEY_NAME:Ljava/lang/String; = "Name"

.field static final KEY_VALUE:Ljava/lang/String; = "Value"

.field public static final TABLE_APP_TRACKING:Ljava/lang/String; = "tbl_AppTracking"

.field public static final TABLE_IMPRESSION_TRACKING:Ljava/lang/String; = "tbl_ImpressionTracking"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "IgawTrackingActivitySQLiteDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 55
    return-void
.end method

.method private createSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string v0, "CREATE TABLE tbl_AppTracking (Id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT NOT NULL, Value TEXT NOT NULL, isDirty INTEGER DEFAULT 0, UNIQUE(Value));"

    .line 70
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE tbl_ImpressionTracking (Id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT NOT NULL, Value TEXT NOT NULL, isDirty INTEGER DEFAULT 0, UNIQUE(Value));"

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public clearDatabase(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v0, "IgawTrackingActivitySQLiteDB.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 105
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 95
    const-string v0, "DROP TABLE IF EXISTS tbl_AppTracking"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "DROP TABLE IF EXISTS tbl_ImpressionTracking"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteOpenHelper;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    return-void
.end method
