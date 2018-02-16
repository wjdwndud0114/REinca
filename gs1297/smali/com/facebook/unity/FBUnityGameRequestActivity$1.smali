.class Lcom/facebook/unity/FBUnityGameRequestActivity$1;
.super Ljava/lang/Object;
.source "FBUnityGameRequestActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBUnityGameRequestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

.field final synthetic val$response:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/FBUnityGameRequestActivity;Lcom/facebook/unity/UnityMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/unity/FBUnityGameRequestActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->this$0:Lcom/facebook/unity/FBUnityGameRequestActivity;

    iput-object p2, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 113
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 114
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/facebook/share/widget/GameRequestDialog$Result;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    const-string v1, "request"

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 106
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    const-string v1, "to"

    const-string v2, ","

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 107
    iget-object v0, p0, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->val$response:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 108
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBUnityGameRequestActivity$1;->onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method
