.class final Lcom/facebook/unity/FB$1;
.super Ljava/lang/Object;
.source "FB.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FB;->Init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/unity/FB$1;->val$appID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 4

    .prologue
    .line 89
    new-instance v1, Lcom/facebook/unity/UnityMessage;

    const-string v2, "OnInitComplete"

    invoke-direct {v1, v2}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "unityMessage":Lcom/facebook/unity/UnityMessage;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 92
    .local v0, "token":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/facebook/unity/FBLogin;->addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/facebook/unity/FB$1;->val$appID:Ljava/lang/String;

    # invokes: Lcom/facebook/unity/FB;->ActivateApp(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/facebook/unity/FB;->access$000(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 101
    return-void

    .line 95
    :cond_0
    const-string v2, "key_hash"

    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    goto :goto_0
.end method
