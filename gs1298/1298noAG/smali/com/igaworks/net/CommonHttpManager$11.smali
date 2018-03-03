.class Lcom/igaworks/net/CommonHttpManager$11;
.super Ljava/lang/Object;
.source "CommonHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/CommonHttpManager;->reportingCrash(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$err:Ljava/util/List;

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/net/CommonHttpManager;Landroid/content/Context;Ljava/util/List;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/CommonHttpManager;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/igaworks/net/CommonHttpManager$11;->this$0:Lcom/igaworks/net/CommonHttpManager;

    iput-object p2, p0, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/net/CommonHttpManager$11;->val$err:Ljava/util/List;

    iput-object p4, p0, Lcom/igaworks/net/CommonHttpManager$11;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/net/CommonHttpManager$11;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/net/CommonHttpManager$11$1;

    invoke-direct {v2, p0}, Lcom/igaworks/net/CommonHttpManager$11$1;-><init>(Lcom/igaworks/net/CommonHttpManager$11;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    .line 1442
    return-void
.end method
