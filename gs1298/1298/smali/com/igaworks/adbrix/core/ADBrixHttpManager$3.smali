.class Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;
.super Ljava/lang/Object;
.source "ADBrixHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getParticipationProgressForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$campaignKey:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;

.field final synthetic val$puid:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$usn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->this$0:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    iput-object p2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$campaignKey:I

    iput-object p4, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$usn:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$appKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$puid:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$url:Ljava/lang/String;

    iput-object p8, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$listener:Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;

    invoke-direct {v3, p0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
