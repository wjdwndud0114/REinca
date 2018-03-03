.class final Lcom/facebook/unity/FBLogin$1;
.super Ljava/lang/Object;
.source "FBLogin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callbackID:Ljava/lang/String;

.field final synthetic val$unityMessage:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/unity/UnityMessage;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/unity/FBLogin$1;->val$callbackID:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/unity/FBLogin$1;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/unity/FBLogin$1;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->putCancelled()Lcom/facebook/unity/UnityMessage;

    .line 122
    iget-object v0, p0, Lcom/facebook/unity/FBLogin$1;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 123
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/unity/FBLogin$1;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/unity/FBLogin$1;->val$callbackID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/unity/FBLogin;->sendLoginSuccessMessage(Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/facebook/unity/FBLogin$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
