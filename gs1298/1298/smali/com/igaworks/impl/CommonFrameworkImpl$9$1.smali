.class Lcom/igaworks/impl/CommonFrameworkImpl$9$1;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl$9;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/igaworks/impl/CommonFrameworkImpl$9;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/impl/CommonFrameworkImpl$9;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$9$1;->this$1:Lcom/igaworks/impl/CommonFrameworkImpl$9;

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
    .line 1610
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/CommonFrameworkImpl$9$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 5
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

    .prologue
    .line 1614
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    :try_start_0
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1615
    # getter for: Lcom/igaworks/impl/CommonFrameworkImpl;->TempProcessedConversionList:Ljava/util/List;
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$400()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1621
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 1616
    :catch_0
    move-exception v1

    .line 1617
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1618
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1619
    .local v0, "Err":Ljava/lang/OutOfMemoryError;
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear TempProcessedConversionList>> OOM Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
