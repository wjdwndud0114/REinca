.class public Lcom/facebook/unity/AppInviteDialogActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "AppInviteDialogActivity.java"


# static fields
.field public static final DIALOG_PARAMS:Ljava/lang/String; = "dialog_params"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v3, Lcom/facebook/unity/UnityMessage;

    const-string v4, "OnAppInviteComplete"

    invoke-direct {v3, v4}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "response":Lcom/facebook/unity/UnityMessage;
    invoke-virtual {p0}, Lcom/facebook/unity/AppInviteDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "dialog_params"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 40
    .local v2, "params":Landroid/os/Bundle;
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;-><init>()V

    .line 41
    .local v0, "contentBuilder":Lcom/facebook/share/model/AppInviteContent$Builder;
    const-string v4, "callback_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "callback_id"

    const-string v5, "callback_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 45
    :cond_0
    const-string v4, "appLinkUrl"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    const-string v4, "appLinkUrl"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    .line 49
    :cond_1
    const-string v4, "previewImageUrl"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const-string v4, "previewImageUrl"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    .line 53
    :cond_2
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    .line 54
    .local v1, "dialog":Lcom/facebook/share/widget/AppInviteDialog;
    iget-object v4, p0, Lcom/facebook/unity/AppInviteDialogActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v5, Lcom/facebook/unity/AppInviteDialogActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/facebook/unity/AppInviteDialogActivity$1;-><init>(Lcom/facebook/unity/AppInviteDialogActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, v4, v5}, Lcom/facebook/share/widget/AppInviteDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 72
    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
