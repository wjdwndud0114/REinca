.class Lcom/facebook/share/internal/DeviceShareDialogFragment$2;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->startShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 188
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_0

    .line 189
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    # invokes: Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V
    invoke-static {v4, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    .line 205
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>()V

    .line 196
    .local v3, "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    :try_start_0
    const-string v4, "user_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setUserCode(Ljava/lang/String;)V

    .line 197
    const-string v4, "expires_in"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setExpiresIn(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    # invokes: Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    invoke-static {v4, v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$200(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "Malformed server response"

    invoke-direct {v5, v6, v7, v8}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V
    invoke-static {v4, v5}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    goto :goto_0
.end method
