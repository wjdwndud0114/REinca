.class final Lcom/facebook/AccessToken$1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessToken;->createFromNativeLinkingIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/AccessToken$AccessTokenCreationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/facebook/AccessToken$AccessTokenCreationCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    iput-object p3, p0, Lcom/facebook/AccessToken$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    invoke-interface {v0, p1}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 327
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 308
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    sget-object v5, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iget-object v7, p0, Lcom/facebook/AccessToken$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/facebook/AccessToken;->access$000(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onSuccess(Lcom/facebook/AccessToken;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Unable to generate access token due to missing user id"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method
