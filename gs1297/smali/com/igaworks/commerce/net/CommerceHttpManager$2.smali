.class Lcom/igaworks/commerce/net/CommerceHttpManager$2;
.super Ljava/lang/Object;
.source "CommerceHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/net/CommerceHttpManager;->eventForCommerceV2(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/net/CommerceHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/net/CommerceHttpManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->this$0:Lcom/igaworks/commerce/net/CommerceHttpManager;

    iput-object p2, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/commerce/net/CommerceHttpManager$2;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;

    invoke-direct {v2, p0}, Lcom/igaworks/commerce/net/CommerceHttpManager$2$1;-><init>(Lcom/igaworks/commerce/net/CommerceHttpManager$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 276
    return-void
.end method
