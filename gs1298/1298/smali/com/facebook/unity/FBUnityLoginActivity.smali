.class public Lcom/facebook/unity/FBUnityLoginActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnityLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
    }
.end annotation


# static fields
.field public static final LOGIN_PARAMS:Ljava/lang/String; = "login_params"

.field public static final LOGIN_TYPE:Ljava/lang/String; = "login_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/unity/FBUnityLoginActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "login_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    .line 37
    .local v1, "type":Lcom/facebook/unity/FBUnityLoginActivity$LoginType;
    invoke-virtual {p0}, Lcom/facebook/unity/FBUnityLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "login_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "loginParams":Ljava/lang/String;
    sget-object v2, Lcom/facebook/unity/FBUnityLoginActivity$1;->$SwitchMap$com$facebook$unity$FBUnityLoginActivity$LoginType:[I

    invoke-virtual {v1}, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-static {v0, p0}, Lcom/facebook/unity/FBLogin;->loginWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
