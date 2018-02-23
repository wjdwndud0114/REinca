.class Lcom/igaworks/commerce/net/CommerceHttpManager$3;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager;->customEventForCommerce(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

.field final synthetic val$ServerType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/net/CommerceHttpManager;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iput-object p2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    iput-object p4, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v3, "customEventForCommerce"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;

    invoke-direct {v3, p0}, Lcom/igaworks/commerce/net/CommerceHttpManager$3$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    iget v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$ServerType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iget-object v2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$items:Ljava/util/List;

    # invokes: Lcom/igaworks/commerce/net/CommerceHttpManager;->restoreCEventInfo(Landroid/content/Context;Ljava/util/List;)V
    invoke-static {v1, v2, v3}, Lcom/igaworks/commerce/net/CommerceHttpManager;->access$100(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/List;)V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$3;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
