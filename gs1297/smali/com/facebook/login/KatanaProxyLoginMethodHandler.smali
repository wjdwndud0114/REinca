.class Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "KatanaProxyLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 174
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 42
    return-void
.end method

.method private getError(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 143
    const-string v1, "error_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 149
    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    const-string v1, "error_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    return-object v0
.end method

.method private handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 5
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "error":Ljava/lang/String;
    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "errorCode":Ljava/lang/String;
    const-string v4, "CONNECTION_FAILURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-direct {p0, v3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {p1, v0, v2, v1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    .line 137
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    goto :goto_0
.end method

.method private handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;
    .locals 11
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 96
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v5}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "error":Ljava/lang/String;
    const-string v8, "error_code"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "errorCode":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "errorMessage":Ljava/lang/String;
    const-string v8, "e2e"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "e2e":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->logWebLoginCompleted(Ljava/lang/String;)V

    .line 105
    :cond_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 107
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 109
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-static {v8, v5, v9, v10}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 110
    .local v6, "token":Lcom/facebook/AccessToken;
    invoke-static {p1, v6}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 119
    .end local v6    # "token":Lcom/facebook/AccessToken;
    :cond_1
    :goto_0
    return-object v7

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "ex":Lcom/facebook/FacebookException;
    invoke-virtual {v4}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_0

    .line 114
    .end local v4    # "ex":Lcom/facebook/FacebookException;
    :cond_2
    sget-object v8, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v8, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 116
    sget-object v8, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v8, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 117
    invoke-static {p1, v7}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {p1, v1, v3, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 74
    .local v1, "request":Lcom/facebook/login/LoginClient$Request;
    if-nez p3, :cond_0

    .line 76
    const-string v2, "Operation canceled"

    invoke-static {v1, v2}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 86
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    :goto_0
    if-eqz v0, :cond_3

    .line 87
    iget-object v2, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 91
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 77
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-direct {p0, v1, p3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->handleResultCancel(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 79
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_1
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    .line 80
    const-string v2, "Unexpected resultCode from authorization."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 83
    .end local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    :cond_2
    invoke-direct {p0, v1, p3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->handleResultOk(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/login/LoginClient$Result;
    goto :goto_0

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 9
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "e2e":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 53
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v4

    .line 58
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->hasPublishPermission()Z

    move-result v5

    .line 59
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v6

    .line 60
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-static/range {v0 .. v7}, Lcom/facebook/internal/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 62
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "e2e"

    invoke-virtual {p0, v0, v3}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method protected tryIntent(Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return v1

    .line 162
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v1, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    return-void
.end method
