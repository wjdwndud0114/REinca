.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 14
    .param p1, "adInfo"    # Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .prologue
    const/4 v3, 0x3

    const/4 v13, 0x0

    .line 338
    if-eqz p1, :cond_3

    .line 339
    # getter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static {}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "onGetSchedule already called."

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    const-string v2, "getScheduleForADBrix > getSchedule call send."

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 349
    .local v9, "defaultLocale":Ljava/util/Locale;
    const-string v11, ""

    .line 351
    .local v11, "os":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 354
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v4, "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "k"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v2}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "la"

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, "co"

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "os"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, "puid"

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$puid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "google_ad_id"

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v8, "0"

    .line 365
    .local v8, "checksum":Ljava/lang/String;
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getCheckSum()Ljava/lang/String;

    move-result-object v8

    .line 369
    :cond_2
    const-string v0, "checksum"

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v12, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/igaworks/net/HttpsUrlConnectionThread;

    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v3, v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$url:Ljava/lang/String;

    new-instance v5, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;

    invoke-direct {v5, p0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/HttpsUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/HashMap;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 517
    .local v12, "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    const/4 v0, 0x1

    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static {v0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    .line 518
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 519
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 521
    .end local v4    # "paramValuePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "checksum":Ljava/lang/String;
    .end local v9    # "defaultLocale":Ljava/util/Locale;
    .end local v11    # "os":Ljava/lang/String;
    .end local v12    # "threadW":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Thread;>;"
    :catch_0
    move-exception v10

    .line 522
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static {v13}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    .line 524
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;->this$1:Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    const-string v1, "IGAW_QA"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 528
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v0, "IGAW_QA"

    const-string v1, "@getScheduleForADBrix: google_ad_id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static {v13}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    goto/16 :goto_0
.end method
