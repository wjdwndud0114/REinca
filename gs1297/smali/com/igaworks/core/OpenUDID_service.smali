.class public Lcom/igaworks/core/OpenUDID_service;
.super Landroid/app/Service;
.source "OpenUDID_service.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 26
    new-instance v0, Lcom/igaworks/core/OpenUDID_service$1;

    invoke-direct {v0, p0}, Lcom/igaworks/core/OpenUDID_service$1;-><init>(Lcom/igaworks/core/OpenUDID_service;)V

    return-object v0
.end method
