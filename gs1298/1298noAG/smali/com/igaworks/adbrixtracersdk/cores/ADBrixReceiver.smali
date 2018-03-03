.class public Lcom/igaworks/adbrixtracersdk/cores/ADBrixReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ADBrixReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    new-instance v0, Lcom/igaworks/IgawReceiver;

    invoke-direct {v0}, Lcom/igaworks/IgawReceiver;-><init>()V

    .line 14
    .local v0, "oReceiver":Lcom/igaworks/IgawReceiver;
    invoke-virtual {v0, p1, p2}, Lcom/igaworks/IgawReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    return-void
.end method
