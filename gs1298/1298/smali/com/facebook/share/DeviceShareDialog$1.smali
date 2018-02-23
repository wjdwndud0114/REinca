.class Lcom/facebook/share/DeviceShareDialog$1;
.super Ljava/lang/Object;
.source "DeviceShareDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/DeviceShareDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/DeviceShareDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/DeviceShareDialog;Lcom/facebook/FacebookCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/share/DeviceShareDialog;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/share/DeviceShareDialog$1;->this$0:Lcom/facebook/share/DeviceShareDialog;

    iput-object p2, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    .line 127
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    iget-object v2, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 131
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    :goto_0
    return v4

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/facebook/share/DeviceShareDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v3, Lcom/facebook/share/DeviceShareDialog$Result;

    invoke-direct {v3}, Lcom/facebook/share/DeviceShareDialog$Result;-><init>()V

    invoke-interface {v2, v3}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
