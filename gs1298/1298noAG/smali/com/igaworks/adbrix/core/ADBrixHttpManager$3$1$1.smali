.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "responseResult null Error"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 578
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, get participation progress result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 580
    invoke-static {p1}, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter;->json2ParticipationProgressModel(Ljava/lang/String;)Lcom/igaworks/model/ParticipationProgressResponseModel;

    move-result-object v1

    .line 581
    .local v1, "ppModel":Lcom/igaworks/model/ParticipationProgressResponseModel;
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$listener:Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;

    invoke-interface {v2, v1}, Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;->callback(Lcom/igaworks/model/ParticipationProgressResponseModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 582
    .end local v1    # "ppModel":Lcom/igaworks/model/ParticipationProgressResponseModel;
    :catch_1
    move-exception v0

    .line 583
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$listener:Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;->callback(Lcom/igaworks/model/ParticipationProgressResponseModel;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;->this$2:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADBrixTracer, get participation progress error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
