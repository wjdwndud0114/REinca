.class Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1$1;
.super Ljava/lang/Object;
.source "ConversionDAOForRetryCompletion.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Landroid/database/Cursor;",
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/adbrix/model/RetryCompleteConversion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1$1;->this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;

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
    .line 59
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RetryCompleteConversion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 65
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/RetryCompleteConversion;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "restoreActivity":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    new-instance v1, Lcom/igaworks/adbrix/model/RetryCompleteConversion;

    .end local v1    # "restoreActivity":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/igaworks/adbrix/model/RetryCompleteConversion;-><init>(II)V

    .line 69
    .restart local v1    # "restoreActivity":Lcom/igaworks/adbrix/model/RetryCompleteConversion;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    return-object v2
.end method
