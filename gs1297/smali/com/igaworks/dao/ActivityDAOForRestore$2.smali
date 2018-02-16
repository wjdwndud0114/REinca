.class Lcom/igaworks/dao/ActivityDAOForRestore$2;
.super Ljava/lang/Object;
.source "ActivityDAOForRestore.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/ActivityDAOForRestore;->getRestoreActivities()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/model/RestoreActivity;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/ActivityDAOForRestore;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/ActivityDAOForRestore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/ActivityDAOForRestore;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/igaworks/dao/ActivityDAOForRestore$2;->this$0:Lcom/igaworks/dao/ActivityDAOForRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/RestoreActivity;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v0, "CounterForRestore"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "activity_group"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "activity"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "regist_datetime"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/ActivityDAOForRestore$2$1;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/ActivityDAOForRestore$2$1;-><init>(Lcom/igaworks/dao/ActivityDAOForRestore$2;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/ActivityDAOForRestore$2;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
