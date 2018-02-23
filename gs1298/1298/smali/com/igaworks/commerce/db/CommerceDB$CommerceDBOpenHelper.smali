.class public Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;
.super Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;
.source "CommerceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/db/CommerceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CommerceDBOpenHelper"
.end annotation


# static fields
.field private static DATABASE_CREATE_COMMERCE_EVENT_V2:Ljava/lang/String;

.field private static DATABASE_CREATE_PURCHASE_RESTORE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "create table PurchaseRestore (%s integer primary key autoincrement, %s text, %s text not null, %s text not null, %s real not null, %s integer, %s text not null, %s text not null, %s text not null, %s integer, %s integer DEFAULT 0, UNIQUE(%s, %s, %s, %s, %s, %s, %s, %s) ON CONFLICT REPLACE)"

    sput-object v0, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->DATABASE_CREATE_PURCHASE_RESTORE:Ljava/lang/String;

    .line 138
    const-string v0, "create table CommerceEventV2 (%s integer primary key autoincrement, %s text not null, %s integer, %s integer DEFAULT 0, UNIQUE(%s) ON CONFLICT REPLACE)"

    sput-object v0, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->DATABASE_CREATE_COMMERCE_EVENT_V2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    sget-object v2, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->DATABASE_CREATE_PURCHASE_RESTORE:Ljava/lang/String;

    const/16 v3, 0x13

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "order_id"

    aput-object v4, v3, v7

    const-string v4, "product_id"

    aput-object v4, v3, v8

    const-string v4, "product_name"

    aput-object v4, v3, v9

    const-string v4, "price"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "quantity"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "currency"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "category"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "create_at"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "retry_count"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "is_Dirty"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "order_id"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "product_id"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "product_name"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "price"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "quantity"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "currency"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "category"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "create_at"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "createCommandPurchaseRestore":Ljava/lang/String;
    sget-object v2, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->DATABASE_CREATE_COMMERCE_EVENT_V2:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "event_json"

    aput-object v4, v3, v7

    const-string v4, "retry_count"

    aput-object v4, v3, v8

    const-string v4, "is_Dirty"

    aput-object v4, v3, v9

    const-string v4, "event_json"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "createEventTableSQL":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_oldVersion"    # I
    .param p3, "_newVersion"    # I

    .prologue
    .line 160
    const-string v0, "DROP TABLE IF EXISTS PurchaseRestore"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "DROP TABLE IF EXISTS CommerceEventV2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    return-void
.end method
