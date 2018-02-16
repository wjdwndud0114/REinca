.class final Lcom/facebook/internal/Utility$2;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/facebook/internal/Utility$2;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    iput-object p2, p0, Lcom/facebook/internal/Utility$2;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1302
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/facebook/internal/Utility$2;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onFailure(Lcom/facebook/FacebookException;)V

    .line 1310
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/Utility$2;->val$accessToken:Ljava/lang/String;

    .line 1307
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 1305
    invoke-static {v0, v1}, Lcom/facebook/internal/ProfileInformationCache;->putProfileInformation(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1308
    iget-object v0, p0, Lcom/facebook/internal/Utility$2;->val$callback:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
