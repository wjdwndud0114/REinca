.class public Lcom/facebook/unity/FBUnityJoinGameGroupActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityJoinGameGroupActivity.java"


# static fields
.field public static JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "join_game_group_params"

    sput-object v0, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 37
    .local v2, "params":Landroid/os/Bundle;
    new-instance v3, Lcom/facebook/unity/UnityMessage;

    const-string v4, "OnJoinGroupComplete"

    invoke-direct {v3, v4}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "response":Lcom/facebook/unity/UnityMessage;
    const-string v4, "callback_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "callback_id"

    const-string v5, "callback_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 42
    :cond_0
    const-string v1, ""

    .line 43
    .local v1, "groupId":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_1
    new-instance v0, Lcom/facebook/share/widget/JoinAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/JoinAppGroupDialog;-><init>(Landroid/app/Activity;)V

    .line 48
    .local v0, "dialog":Lcom/facebook/share/widget/JoinAppGroupDialog;
    iget-object v4, p0, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v5, Lcom/facebook/unity/FBUnityJoinGameGroupActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/facebook/unity/FBUnityJoinGameGroupActivity$1;-><init>(Lcom/facebook/unity/FBUnityJoinGameGroupActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v0, v4, v5}, Lcom/facebook/share/widget/JoinAppGroupDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/JoinAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
