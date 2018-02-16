.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$3;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$3;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;

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
    .line 442
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$3;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 448
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 449
    .local v0, "restoreConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/model/DeeplinkReEngagementConversion;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    new-instance v0, Lcom/igaworks/model/DeeplinkReEngagementConversion;

    .end local v0    # "restoreConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/model/DeeplinkReEngagementConversion;-><init>(IILjava/lang/String;II)V

    .line 452
    .restart local v0    # "restoreConversion":Lcom/igaworks/model/DeeplinkReEngagementConversion;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 454
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    return-object v7
.end method
