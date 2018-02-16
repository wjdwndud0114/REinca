.class public Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;
.super Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;
.source "DeeplinkDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/dao/DeeplinkDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CommerceDBOpenHelper"
.end annotation


# static fields
.field private static DATABASE_CREATE_CONVERSION_RESTORE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "create table ConversionRestore (%s integer primary key autoincrement, %s text not null, %s text not null, %s text, %s integer, %s integer, UNIQUE(%s, %s) ON CONFLICT REPLACE)"

    sput-object v0, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->DATABASE_CREATE_CONVERSION_RESTORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 144
    sget-object v3, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->DATABASE_CREATE_CONVERSION_RESTORE:Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "conversion_key"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "commerce_click_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "link_param"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "retry_count"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "isDirty"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "conversion_key"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "commerce_click_id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "createCommandConversionRestore":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v1, "CREATE TABLE ReEngagementConversionTbl (_id INTEGER PRIMARY KEY AUTOINCREMENT, conversion_key INTEGER, deeplink_info TEXT NOT NULL, retry_count INTEGER, isDirty INTEGER DEFAULT 0, UNIQUE(conversion_key));"

    .line 156
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v2, "CREATE TABLE ThirdPartyConversionTbl (_id INTEGER PRIMARY KEY AUTOINCREMENT, conversion_key INTEGER, deeplink_info TEXT NOT NULL, retry_count INTEGER, isDirty INTEGER DEFAULT 0, UNIQUE(conversion_key));"

    .line 166
    .local v2, "sql_thirdParty":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_oldVersion"    # I
    .param p3, "_newVersion"    # I

    .prologue
    .line 175
    const-string v0, "DROP TABLE IF EXISTS ConversionRestore"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "DROP TABLE IF EXISTS ReEngagementConversionTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "DROP TABLE IF EXISTS ThirdPartyConversionTbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    return-void
.end method
