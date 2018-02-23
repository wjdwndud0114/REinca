.class public Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/tapjoy/mraid/controller/Network;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/controller/Network;)V
    .locals 0
    .param p1, "mraidNetworkController"    # Lcom/tapjoy/mraid/controller/Network;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;->a:Lcom/tapjoy/mraid/controller/Network;

    .line 26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;->a:Lcom/tapjoy/mraid/controller/Network;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Network;->onConnectionChanged()V

    .line 37
    :cond_0
    return-void
.end method
