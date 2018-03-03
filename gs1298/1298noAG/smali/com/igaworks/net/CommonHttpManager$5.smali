.class Lcom/igaworks/net/CommonHttpManager$5;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->conversionForDeeplink(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$5;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$conversions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v3, "conversionForDeeplink"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 847
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/net/CommonHttpManager$5$1;

    invoke-direct {v3, p0}, Lcom/igaworks/net/CommonHttpManager$5$1;-><init>(Lcom/igaworks/net/CommonHttpManager$5;)V

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iget-object v2, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$conversions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/net/CommonHttpManager;->restoreConversionInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 929
    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$5;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
