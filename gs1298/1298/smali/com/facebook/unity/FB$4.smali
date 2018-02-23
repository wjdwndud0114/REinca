.class final Lcom/facebook/unity/FB$4;
.super Ljava/lang/Object;
.source "FB.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FB;->RefreshCurrentAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unityMessage:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/facebook/unity/FB$4;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .locals 1
    .param p1, "appLinkData"    # Lcom/facebook/applinks/AppLinkData;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/unity/FB$4;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    # invokes: Lcom/facebook/unity/FB;->addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V
    invoke-static {v0, p1}, Lcom/facebook/unity/FB;->access$100(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V

    .line 348
    iget-object v0, p0, Lcom/facebook/unity/FB$4;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 349
    return-void
.end method
