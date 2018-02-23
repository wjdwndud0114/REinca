.class public Lcom/facebook/unity/FBUnityGameRequestActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityGameRequestActivity.java"


# static fields
.field public static final GAME_REQUEST_PARAMS:Ljava/lang/String; = "game_request_params"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "game_request_params"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 43
    .local v6, "params":Landroid/os/Bundle;
    new-instance v8, Lcom/facebook/unity/UnityMessage;

    const-string v11, "OnAppRequestsComplete"

    invoke-direct {v8, v11}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 44
    .local v8, "response":Lcom/facebook/unity/UnityMessage;
    const-string v11, "callback_id"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 45
    const-string v11, "callback_id"

    const-string v12, "callback_id"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 48
    :cond_0
    new-instance v2, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 49
    .local v2, "contentBuilder":Lcom/facebook/share/model/GameRequestContent$Builder;
    const-string v11, "message"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 50
    const-string v11, "message"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 53
    :cond_1
    const-string v11, "action_type"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 54
    const-string v11, "action_type"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "actionTypeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v10

    .line 58
    .local v10, "type":Lcom/facebook/share/model/GameRequestContent$ActionType;
    invoke-virtual {v2, v10}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "actionTypeStr":Ljava/lang/String;
    .end local v10    # "type":Lcom/facebook/share/model/GameRequestContent$ActionType;
    :cond_2
    const-string v11, "object_id"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 67
    const-string v11, "object_id"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 71
    :cond_3
    const-string v11, "to"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 72
    const-string v11, "to"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "toStr":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 76
    .end local v9    # "toStr":Ljava/lang/String;
    :cond_4
    const-string v11, "filters"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 77
    const-string v11, "filters"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "filtersStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v4

    .line 80
    .local v4, "filters":Lcom/facebook/share/model/GameRequestContent$Filters;
    invoke-virtual {v2, v4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v4    # "filters":Lcom/facebook/share/model/GameRequestContent$Filters;
    .end local v5    # "filtersStr":Ljava/lang/String;
    :cond_5
    const-string v11, "data"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 89
    const-string v11, "data"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 92
    :cond_6
    const-string v11, "title"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 93
    const-string v11, "title"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 96
    :cond_7
    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v1

    .line 99
    .local v1, "content":Lcom/facebook/share/model/GameRequestContent;
    new-instance v7, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v7, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 100
    .local v7, "requestDialog":Lcom/facebook/share/widget/GameRequestDialog;
    iget-object v11, p0, Lcom/facebook/unity/FBUnityGameRequestActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v12, Lcom/facebook/unity/FBUnityGameRequestActivity$1;

    invoke-direct {v12, p0, v8}, Lcom/facebook/unity/FBUnityGameRequestActivity$1;-><init>(Lcom/facebook/unity/FBUnityGameRequestActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v7, v11, v12}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 123
    :try_start_2
    invoke-virtual {v7, v1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .end local v1    # "content":Lcom/facebook/share/model/GameRequestContent;
    .end local v7    # "requestDialog":Lcom/facebook/share/widget/GameRequestDialog;
    :goto_0
    return-void

    .line 59
    .restart local v0    # "actionTypeStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 60
    .local v3, "exception":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown action type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    goto :goto_0

    .line 81
    .end local v0    # "actionTypeStr":Ljava/lang/String;
    .end local v3    # "exception":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "filtersStr":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 82
    .restart local v3    # "exception":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported filter type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    goto :goto_0

    .line 124
    .end local v3    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v5    # "filtersStr":Ljava/lang/String;
    .restart local v1    # "content":Lcom/facebook/share/model/GameRequestContent;
    .restart local v7    # "requestDialog":Lcom/facebook/share/widget/GameRequestDialog;
    :catch_2
    move-exception v3

    .line 125
    .restart local v3    # "exception":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected exception encountered: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityGameRequestActivity;->finish()V

    goto :goto_0
.end method
