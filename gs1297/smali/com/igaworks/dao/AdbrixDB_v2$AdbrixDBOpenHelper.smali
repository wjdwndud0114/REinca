.class public Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;
.super Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;
.source "AdbrixDB_v2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/dao/AdbrixDB_v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AdbrixDBOpenHelper"
.end annotation


# static fields
.field private static DATABASE_CREATE_ALL_ACTIVITY:Ljava/lang/String;

.field private static DATABASE_CREATE_CPE:Ljava/lang/String;

.field private static DATABASE_CREATE_RESTORE_ACTIVITY:Ljava/lang/String;

.field private static DATABASE_CREATE_RETRY_COMPLETE_CONVERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string v0, "create table ActivityCounter (%s integer primary key autoincrement, %s integer not null, %s integer not null, %s integer not null, %s integer not null, %s text not null, %s text not null, %s integer, %s integer not null, %s integer not null, %s integer not null, %s integer not null, %s text, %s text, %s text,UNIQUE(%s, %s, %s, %s, %s, %s) ON CONFLICT REPLACE)"

    sput-object v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_CPE:Ljava/lang/String;

    .line 150
    const-string v0, "create table AllActivityCounter (%s integer primary key autoincrement, %s text not null, %s text not null, %s integer not null,UNIQUE(%s, %s) ON CONFLICT REPLACE)"

    sput-object v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_ALL_ACTIVITY:Ljava/lang/String;

    .line 155
    const-string v0, "create table CounterForRestore (%s integer primary key autoincrement, %s text not null, %s text not null, %s text not null)"

    sput-object v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_RESTORE_ACTIVITY:Ljava/lang/String;

    .line 159
    const-string v0, "create table RetryCompleteConversion (%s integer primary key, %s integer not null)"

    sput-object v0, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_RETRY_COMPLETE_CONVERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 141
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    sget-object v4, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_CPE:Ljava/lang/String;

    const/16 v5, 0x15

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v8

    const-string v6, "year"

    aput-object v6, v5, v9

    const-string v6, "month"

    aput-object v6, v5, v10

    const-string v6, "day"

    aput-object v6, v5, v11

    const-string v6, "hour"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "activity_group"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "activity"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "counter"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "year_updated"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "month_updated"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "day_updated"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "hour_updated"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "regist_datetime"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "update_datetime"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "no_counting_update_datetime"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "year"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "month"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "day"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "hour"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "activity_group"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "activity"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "createCommandCPE":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    sget-object v4, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_ALL_ACTIVITY:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v8

    const-string v6, "activity_group"

    aput-object v6, v5, v9

    const-string v6, "activity"

    aput-object v6, v5, v10

    const-string v6, "counter"

    aput-object v6, v5, v11

    const-string v6, "activity_group"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "activity"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "createCommandAllActivity":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    sget-object v4, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_RESTORE_ACTIVITY:Ljava/lang/String;

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v8

    const-string v6, "activity_group"

    aput-object v6, v5, v9

    const-string v6, "activity"

    aput-object v6, v5, v10

    const-string v6, "regist_datetime"

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "createCommandRestoreActivity":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    sget-object v4, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->DATABASE_CREATE_RETRY_COMPLETE_CONVERSION:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "conversion_key"

    aput-object v6, v5, v8

    const-string v6, "retry_count"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "createCommandRetryCompleteConversion":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_oldVersion"    # I
    .param p3, "_newVersion"    # I

    .prologue
    .line 192
    const-string v0, "DROP TABLE IF EXISTS ActivityCounter"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "DROP TABLE IF EXISTS AllActivityCounter"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v0, "DROP TABLE IF EXISTS CounterForRestore"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v0, "DROP TABLE IF EXISTS RetryCompleteConversion"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    return-void
.end method
