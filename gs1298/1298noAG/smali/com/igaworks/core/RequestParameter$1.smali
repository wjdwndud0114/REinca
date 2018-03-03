.class Lcom/igaworks/core/RequestParameter$1;
.super Ljava/lang/Object;
.source "RequestParameter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/core/RequestParameter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/core/RequestParameter;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/core/RequestParameter;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    iput-object p2, p0, Lcom/igaworks/core/RequestParameter$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    # getter for: Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->access$000(Lcom/igaworks/core/RequestParameter;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->val$ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    .line 165
    .local v0, "didManager":Lcom/igaworks/core/DeviceIDManger;
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    iget-object v3, p0, Lcom/igaworks/core/RequestParameter$1;->val$ctx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v3

    # setter for: Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    invoke-static {v2, v3}, Lcom/igaworks/core/RequestParameter;->access$002(Lcom/igaworks/core/RequestParameter;Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 167
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    # getter for: Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->access$000(Lcom/igaworks/core/RequestParameter;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    iget-object v3, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    # getter for: Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->access$000(Lcom/igaworks/core/RequestParameter;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/igaworks/core/RequestParameter;->google_ad_id:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/igaworks/core/RequestParameter;->access$102(Lcom/igaworks/core/RequestParameter;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    iget-object v3, p0, Lcom/igaworks/core/RequestParameter$1;->this$0:Lcom/igaworks/core/RequestParameter;

    # getter for: Lcom/igaworks/core/RequestParameter;->adidInfo:Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    invoke-static {v3}, Lcom/igaworks/core/RequestParameter;->access$000(Lcom/igaworks/core/RequestParameter;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v3

    # setter for: Lcom/igaworks/core/RequestParameter;->google_ad_id_opt_out:Z
    invoke-static {v2, v3}, Lcom/igaworks/core/RequestParameter;->access$202(Lcom/igaworks/core/RequestParameter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "didManager":Lcom/igaworks/core/DeviceIDManger;
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
