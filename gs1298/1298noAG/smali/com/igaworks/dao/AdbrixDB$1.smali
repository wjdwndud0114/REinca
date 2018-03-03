.class Lcom/igaworks/dao/AdbrixDB$1;
.super Ljava/lang/Object;
.source "AdbrixDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/AdbrixDB;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/AdbrixDB;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/AdbrixDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/AdbrixDB;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/igaworks/dao/AdbrixDB$1;->this$0:Lcom/igaworks/dao/AdbrixDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/AdbrixDB$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/dao/AdbrixDB$1;->this$0:Lcom/igaworks/dao/AdbrixDB;

    sget-object v2, Lcom/igaworks/dao/AdbrixDB;->dbHelper:Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;

    invoke-virtual {v2}, Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/igaworks/dao/AdbrixDB;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/igaworks/dao/AdbrixDB$1;->this$0:Lcom/igaworks/dao/AdbrixDB;

    sget-object v2, Lcom/igaworks/dao/AdbrixDB;->dbHelper:Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;

    invoke-virtual {v2}, Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, v1, Lcom/igaworks/dao/AdbrixDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method
