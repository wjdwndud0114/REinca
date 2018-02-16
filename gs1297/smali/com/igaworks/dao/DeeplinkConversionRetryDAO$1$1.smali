.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$1;
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
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/model/DeeplinkConversionItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

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
    .line 87
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkConversionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;

    iget-object v0, v0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$1;->val$retryList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
