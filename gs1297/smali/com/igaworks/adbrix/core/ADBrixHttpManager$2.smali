.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getScheduleForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/adbrix/model/ScheduleContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$puid:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$puid:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;

    invoke-direct {v3, p0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    const/4 v1, 0x0

    # setter for: Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z
    invoke-static {v1}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->access$602(Z)Z

    goto :goto_0
.end method
