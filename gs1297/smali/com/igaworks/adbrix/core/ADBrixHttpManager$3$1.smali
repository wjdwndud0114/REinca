.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 11
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v10, 0x3

    .line 555
    if-eqz p1, :cond_0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParticipationProgressForADBrix > getParticipationProgress call send. ck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget v3, v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$campaignKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", google adid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", usn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v3, v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$usn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v3, v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 559
    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 561
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ak"

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$appKey:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "ck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$campaignKey:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v0, "puid"

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$puid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v0, "google_ad_id"

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v0, "usn"

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$usn:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v9, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v3, v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$url:Ljava/lang/String;

    new-instance v5, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 594
    .local v9, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 595
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v8

    .line 598
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADBrixTracer, get participation progress error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 602
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v0, "IGAW_QA"

    const-string v1, "@getParticipationProgressForADBrix: google_ad_is is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
