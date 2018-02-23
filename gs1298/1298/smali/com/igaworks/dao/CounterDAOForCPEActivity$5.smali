.class Lcom/igaworks/dao/CounterDAOForCPEActivity$5;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->removeCounterLessThanDate(IIIILjava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$day:I

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$hour:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$year:I

    iput p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$month:I

    iput p4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$day:I

    iput p5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$hour:I

    iput-object p6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$group:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$activity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 8
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

    .line 131
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CounterDAOForCPEActivity"

    const-string v2, "Remove counter by date that less than: [%d-%d-%d %dh] group = %s, activity = %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$group:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$activity:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    const-string v7, "ActivityCounter"

    iget-object v0, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iget v1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$year:I

    iget v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$month:I

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$day:I

    iget v4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$hour:I

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$group:Ljava/lang/String;

    iget-object v6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->val$activity:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getQueryStringByDateLessThan(IIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v7, v0, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$5;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
