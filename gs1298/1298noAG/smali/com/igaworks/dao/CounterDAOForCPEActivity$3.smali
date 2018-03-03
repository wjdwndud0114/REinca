.class Lcom/igaworks/dao/CounterDAOForCPEActivity$3;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->removeCounter(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput-object p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$activity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 7
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 109
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CounterDAOForCPEActivity"

    const-string v2, "Remove counter : group = %s, activity = %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$group:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$activity:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    const-string v0, "ActivityCounter"

    iget-object v1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$group:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->val$activity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$3;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
