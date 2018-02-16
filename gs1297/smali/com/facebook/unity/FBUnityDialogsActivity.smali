.class public Lcom/facebook/unity/FBUnityDialogsActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityDialogsActivity.java"


# static fields
.field public static final DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final FEED_DIALOG_PARAMS:Ljava/lang/String; = "feed_dialog_params"

.field public static final SHARE_DIALOG_PARAMS:Ljava/lang/String; = "share_dialog_params"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FBUnityDialogsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 48
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "share_dialog_params"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-string v7, "share_dialog_params"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 50
    .local v4, "params":Landroid/os/Bundle;
    invoke-static {v4}, Lcom/facebook/unity/FBDialogUtils;->createShareContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v6

    .line 65
    .local v6, "shareContent":Lcom/facebook/share/model/ShareContent;
    :goto_0
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 66
    .local v1, "dialog":Lcom/facebook/share/widget/ShareDialog;
    new-instance v5, Lcom/facebook/unity/UnityMessage;

    const-string v7, "OnShareLinkComplete"

    invoke-direct {v5, v7}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, "response":Lcom/facebook/unity/UnityMessage;
    const-string v7, "callback_id"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callbackID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 69
    const-string v7, "callback_id"

    invoke-virtual {v5, v7, v0}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 72
    :cond_0
    iget-object v7, p0, Lcom/facebook/unity/FBUnityDialogsActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v8, Lcom/facebook/unity/FBUnityDialogsActivity$1;

    invoke-direct {v8, p0, v5}, Lcom/facebook/unity/FBUnityDialogsActivity$1;-><init>(Lcom/facebook/unity/FBUnityDialogsActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, v7, v8}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "dialog_type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 95
    .local v3, "mode":Lcom/facebook/share/widget/ShareDialog$Mode;
    invoke-virtual {v1, v6, v3}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 96
    .end local v0    # "callbackID":Ljava/lang/String;
    .end local v1    # "dialog":Lcom/facebook/share/widget/ShareDialog;
    .end local v3    # "mode":Lcom/facebook/share/widget/ShareDialog$Mode;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "response":Lcom/facebook/unity/UnityMessage;
    .end local v6    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :goto_1
    return-void

    .line 51
    :cond_1
    const-string v7, "feed_dialog_params"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    const-string v7, "feed_dialog_params"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 53
    .restart local v4    # "params":Landroid/os/Bundle;
    invoke-static {v4}, Lcom/facebook/unity/FBDialogUtils;->createFeedContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->build()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v6

    .restart local v6    # "shareContent":Lcom/facebook/share/model/ShareContent;
    goto :goto_0

    .line 55
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v6    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_2
    sget-object v7, Lcom/facebook/unity/FBUnityDialogsActivity;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "Failed to find extra %s or %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "share_dialog_params"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "feed_dialog_params"

    aput-object v12, v10, v11

    .line 56
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityDialogsActivity;->finish()V

    goto :goto_1
.end method
