.class public Lcom/facebook/internal/FacebookDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "FacebookDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FacebookDialogFragment"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/facebook/FacebookException;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebFallbackDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 142
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 141
    invoke-static {v3, p1, p2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v2

    .line 146
    .local v2, "resultIntent":Landroid/content/Intent;
    if-nez p2, :cond_0

    const/4 v1, -0x1

    .line 148
    .local v1, "resultCode":I
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 150
    return-void

    .line 146
    .end local v1    # "resultCode":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCompleteWebFallbackDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 155
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v1, "resultIntent":Landroid/content/Intent;
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "values":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 160
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/WebDialog;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 128
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v9, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v9, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 59
    .local v1, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v4

    .line 62
    .local v4, "params":Landroid/os/Bundle;
    const-string v9, "is_fallback"

    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 64
    .local v3, "isWebFallback":Z
    if-nez v3, :cond_2

    .line 65
    const-string v9, "action"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "actionName":Ljava/lang/String;
    const-string v9, "params"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 67
    .local v8, "webParams":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    const-string v9, "FacebookDialogFragment"

    const-string v10, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    invoke-static {v9, v10}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 108
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isWebFallback":Z
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v8    # "webParams":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0    # "actionName":Ljava/lang/String;
    .restart local v1    # "activity":Landroid/support/v4/app/FragmentActivity;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isWebFallback":Z
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v8    # "webParams":Landroid/os/Bundle;
    :cond_1
    new-instance v9, Lcom/facebook/internal/WebDialog$Builder;

    invoke-direct {v9, v1, v0, v8}, Lcom/facebook/internal/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/facebook/internal/FacebookDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/facebook/internal/FacebookDialogFragment$1;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    .line 76
    invoke-virtual {v9, v10}, Lcom/facebook/internal/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;

    move-result-object v9

    .line 82
    invoke-virtual {v9}, Lcom/facebook/internal/WebDialog$Builder;->build()Lcom/facebook/internal/WebDialog;

    move-result-object v7

    .line 106
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v8    # "webParams":Landroid/os/Bundle;
    .local v7, "webDialog":Lcom/facebook/internal/WebDialog;
    :goto_1
    iput-object v7, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 84
    .end local v7    # "webDialog":Lcom/facebook/internal/WebDialog;
    :cond_2
    const-string v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 86
    const-string v9, "FacebookDialogFragment"

    const-string v10, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    invoke-static {v9, v10}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 93
    :cond_3
    const-string v9, "fb%s://bridge/"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "redirectUrl":Ljava/lang/String;
    new-instance v7, Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-direct {v7, v1, v6, v5}, Lcom/facebook/internal/FacebookWebFallbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .restart local v7    # "webDialog":Lcom/facebook/internal/WebDialog;
    new-instance v9, Lcom/facebook/internal/FacebookDialogFragment$2;

    invoke-direct {v9, p0}, Lcom/facebook/internal/FacebookDialogFragment$2;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    invoke-virtual {v7, v9}, Lcom/facebook/internal/WebDialog;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, v1, v1}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/FacebookDialogFragment;->setShowsDialog(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 135
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 136
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    .line 51
    return-void
.end method
