.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->onResultCustom(Landroid/graphics/Bitmap;)V
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
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

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
    .line 216
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Object;",
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
    .line 218
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getDAO(Landroid/content/Context;)Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    move-result-object v0

    .line 219
    .local v0, "retryDao":Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->conversionKey:I
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$400(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->updateOrInsertConversionForRetry(I)V

    .line 220
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    const-string v3, "Notice Dialog > image downloader returned null, add to restore storage"

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 221
    const/4 v1, 0x0

    return-object v1
.end method
