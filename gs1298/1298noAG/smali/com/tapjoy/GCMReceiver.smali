.class public Lcom/tapjoy/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p1}, Lcom/tapjoy/internal/gb;->b(Landroid/content/Context;)Lcom/tapjoy/internal/gb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/gb;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/tapjoy/GCMReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 61
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/tapjoy/GCMReceiver;->abortBroadcast()V

    .line 66
    :cond_0
    return-void
.end method
