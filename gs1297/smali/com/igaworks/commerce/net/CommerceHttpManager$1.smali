.class Lcom/igaworks/commerce/net/CommerceHttpManager$1;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager;->purchaseForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/net/CommerceHttpManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iput-object p2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v3, "purchaseForCommerce"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;

    invoke-direct {v3, p0}, Lcom/igaworks/commerce/net/CommerceHttpManager$1$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->restorePurchaseInfo(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
