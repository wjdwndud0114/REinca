.class public Lcom/facebook/unity/FBUnityCreateGameGroupActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityCreateGameGroupActivity.java"


# static fields
.field public static CREATE_GAME_GROUP_PARAMS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "create_game_group_params"

    sput-object v0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->CREATE_GAME_GROUP_PARAMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;-><init>()V

    .line 44
    .local v0, "contentBuilder":Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->CREATE_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 45
    .local v2, "params":Landroid/os/Bundle;
    new-instance v5, Lcom/facebook/unity/UnityMessage;

    const-string v6, "OnGroupCreateComplete"

    invoke-direct {v5, v6}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, "response":Lcom/facebook/unity/UnityMessage;
    const-string v6, "callback_id"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    const-string v6, "callback_id"

    const-string v7, "callback_id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 50
    :cond_0
    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setName(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 54
    :cond_1
    const-string v6, "description"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setDescription(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 58
    :cond_2
    const-string v6, "privacy"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    const-string v6, "privacy"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "privacyStr":Ljava/lang/String;
    sget-object v3, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 61
    .local v3, "privacy":Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    const-string v6, "closed"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    sget-object v3, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 73
    :goto_0
    invoke-virtual {v0, v3}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setAppGroupPrivacy(Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 76
    .end local v3    # "privacy":Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .end local v4    # "privacyStr":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Landroid/app/Activity;)V

    .line 77
    .local v1, "dialog":Lcom/facebook/share/widget/CreateAppGroupDialog;
    iget-object v6, p0, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v7, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;

    invoke-direct {v7, p0, v5}, Lcom/facebook/unity/FBUnityCreateGameGroupActivity$1;-><init>(Lcom/facebook/unity/FBUnityCreateGameGroupActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, v6, v7}, Lcom/facebook/share/widget/CreateAppGroupDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 95
    invoke-virtual {v0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->build()Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 63
    .end local v1    # "dialog":Lcom/facebook/share/widget/CreateAppGroupDialog;
    .restart local v3    # "privacy":Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .restart local v4    # "privacyStr":Ljava/lang/String;
    :cond_4
    const-string v6, "open"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 64
    sget-object v3, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    goto :goto_0

    .line 66
    :cond_5
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "Unknown privacy setting for group creation: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 67
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->finish()V

    goto :goto_0
.end method
