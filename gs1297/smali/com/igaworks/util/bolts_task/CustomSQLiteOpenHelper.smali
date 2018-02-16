.class public abstract Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "CustomSQLiteOpenHelper.java"


# instance fields
.field private final helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 25
    :cond_0
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper$1;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 42
    return-void
.end method

.method private getDatabaseAsync(Z)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .param p1, "writable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->openDatabaseAsync(Landroid/database/sqlite/SQLiteOpenHelper;I)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getReadableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;->getDatabaseAsync(Z)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteOpenHelper;->getDatabaseAsync(Z)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 59
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
