.class Lcom/tapjoy/TapjoyConnectUnity$10$1;
.super Landroid/os/Handler;
.source "TapjoyConnectUnity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectUnity$10;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectUnity$10;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectUnity$10$1;->this$0:Lcom/tapjoy/TapjoyConnectUnity$10;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity$10$1;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    return-void
.end method
