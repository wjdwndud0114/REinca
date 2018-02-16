.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/model/DeeplinkConversionItem;",
        ">;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

.field final synthetic val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iput-object p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkConversionItem;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->val$retryList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Capture;->set(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iget-object v1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iget-object v1, v1, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iget-object v2, v2, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->val$retryList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "ConversionRestore"

    # invokes: Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static/range {v0 .. v5}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->access$000(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$2;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
