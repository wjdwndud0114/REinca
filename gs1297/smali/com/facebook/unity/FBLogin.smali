.class public Lcom/facebook/unity/FBLogin;
.super Ljava/lang/Object;
.source "FBLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 8
    .param p0, "unityMessage"    # Lcom/facebook/unity/UnityMessage;
    .param p1, "token"    # Lcom/facebook/AccessToken;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 61
    const-string v2, "key_hash"

    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 62
    const-string v2, "opened"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 63
    const-string v2, "access_token"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 65
    .local v0, "expiration":Ljava/lang/Long;
    const-string v2, "expiration_timestamp"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 66
    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 67
    const-string v2, "permissions"

    const-string v3, ","

    .line 68
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 69
    const-string v2, "declined_permissions"

    const-string v3, ","

    .line 70
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 74
    .local v1, "lastRefresh":Ljava/lang/Long;
    const-string v2, "last_refresh"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 77
    .end local v1    # "lastRefresh":Ljava/lang/Long;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const-string v2, "callback_id"

    invoke-virtual {p0, v2, p2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 80
    :cond_1
    return-void
.end method

.method private static login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;Z)V
    .locals 8
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;
    .param p2, "isPublishPermLogin"    # Z

    .prologue
    .line 86
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    sget-object v5, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v6, "Facebook SDK not initialized. Call init() before calling login()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v3, Lcom/facebook/unity/UnityMessage;

    const-string v5, "OnLoginComplete"

    invoke-direct {v3, v5}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "unityMessage":Lcom/facebook/unity/UnityMessage;
    const-string v5, "key_hash"

    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t parse login params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v4

    .line 96
    .local v4, "unity_params":Lcom/facebook/unity/UnityParams;
    const/4 v2, 0x0

    .line 97
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "scope"

    invoke-virtual {v4, v5}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "scope"

    .line 99
    invoke-virtual {v4, v5}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .restart local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .line 103
    .local v1, "callbackIDString":Ljava/lang/String;
    const-string v5, "callback_id"

    invoke-virtual {v4, v5}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    const-string v5, "callback_id"

    invoke-virtual {v4, v5}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v5, "callback_id"

    invoke-virtual {v3, v5, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 108
    :cond_2
    move-object v0, v1

    .line 111
    .local v0, "callbackID":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v5

    .line 112
    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityLoginActivity;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v6

    new-instance v7, Lcom/facebook/unity/FBLogin$1;

    invoke-direct {v7, v0, v3}, Lcom/facebook/unity/FBLogin$1;-><init>(Ljava/lang/String;Lcom/facebook/unity/UnityMessage;)V

    .line 111
    invoke-virtual {v5, v6, v7}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 131
    if-eqz p2, :cond_3

    .line 132
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static loginWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;Z)V

    .line 49
    return-void
.end method

.method public static loginWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;Z)V

    .line 43
    return-void
.end method

.method public static sendLoginSuccessMessage(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Lcom/facebook/AccessToken;
    .param p1, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnLoginComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "unityMessage":Lcom/facebook/unity/UnityMessage;
    invoke-static {v0, p0, p1}, Lcom/facebook/unity/FBLogin;->addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 55
    return-void
.end method
