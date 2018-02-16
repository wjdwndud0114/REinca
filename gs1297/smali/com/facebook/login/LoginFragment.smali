.class public Lcom/facebook/login/LoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoginFragment.java"


# static fields
.field private static final CHALLENGE_LENGTH:I = 0x14

.field static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginFragment:Result"

.field private static final SAVED_CHALLENGE:Ljava/lang/String; = "challenge"

.field private static final SAVED_LOGIN_CLIENT:Ljava/lang/String; = "loginClient"

.field private static final TAG:Ljava/lang/String; = "LoginFragment"


# instance fields
.field private callingPackage:Ljava/lang/String;

.field private expectedChallenge:Ljava/lang/String;

.field private loginClient:Lcom/facebook/login/LoginClient;

.field private request:Lcom/facebook/login/LoginClient$Request;

.field private restarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/LoginFragment;
    .param p1, "x1"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginFragment;->onLoginClientCompleted(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method private initializeCallingPackage(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 205
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    goto :goto_0
.end method

.method private onLoginClientCompleted(Lcom/facebook/login/LoginClient$Result;)V
    .locals 5
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .prologue
    .line 136
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    .line 138
    iget-object v3, p1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v4, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    .line 141
    .local v1, "resultCode":I
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "com.facebook.LoginFragment:Result"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 152
    :cond_0
    return-void

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "resultCode":I
    .end local v2    # "resultIntent":Landroid/content/Intent;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getChallengeParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->expectedChallenge:Ljava/lang/String;

    return-object v0
.end method

.method getLoginClient()Lcom/facebook/login/LoginClient;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginClient;->onActivityResult(IILandroid/content/Intent;)Z

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/facebook/login/LoginFragment;->restarted:Z

    .line 74
    if-eqz p1, :cond_2

    .line 75
    const-string v2, "loginClient"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/LoginClient;

    iput-object v2, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    .line 76
    iget-object v2, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, p0}, Lcom/facebook/login/LoginClient;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 77
    const-string v2, "challenge"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/LoginFragment;->expectedChallenge:Ljava/lang/String;

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    new-instance v3, Lcom/facebook/login/LoginFragment$1;

    invoke-direct {v3, p0}, Lcom/facebook/login/LoginFragment$1;-><init>(Lcom/facebook/login/LoginFragment;)V

    invoke-virtual {v2, v3}, Lcom/facebook/login/LoginClient;->setOnCompletedListener(Lcom/facebook/login/LoginClient$OnCompletedListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 104
    :cond_0
    :goto_2
    return-void

    .line 72
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :cond_2
    new-instance v2, Lcom/facebook/login/LoginClient;

    invoke-direct {v2, p0}, Lcom/facebook/login/LoginClient;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v2, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    .line 80
    const/16 v2, 0x14

    invoke-static {v2}, Lcom/facebook/internal/Utility;->generateRandomString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/LoginFragment;->expectedChallenge:Ljava/lang/String;

    goto :goto_1

    .line 95
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/login/LoginFragment;->initializeCallingPackage(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    const-string v2, "request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/LoginClient$Request;

    iput-object v2, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    sget v1, Lcom/facebook/R$layout;->com_facebook_login_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    new-instance v2, Lcom/facebook/login/LoginFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/LoginFragment$2;-><init>(Lcom/facebook/login/LoginFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/facebook/login/LoginClient;->setBackgroundProcessingListener(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V

    .line 132
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->cancelCurrentHandler()V

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 185
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 161
    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 162
    const-string v1, "LoginFragment"

    const-string v2, "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/login/LoginFragment;->restarted:Z

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 169
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/facebook/FacebookActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    .line 170
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/login/CustomTabLoginMethodHandler;

    if-eqz v1, :cond_1

    .line 172
    check-cast v0, Lcom/facebook/FacebookActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/facebook/FacebookActivity;->sendResult(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 176
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/login/LoginFragment;->restarted:Z

    .line 178
    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    iget-object v2, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1, v2}, Lcom/facebook/login/LoginClient;->startOrContinueAuth(Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "loginClient"

    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    const-string v0, "challenge"

    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public validateChallengeParam(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 213
    :try_start_0
    const-string v5, "state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "stateString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 221
    .end local v3    # "stateString":Ljava/lang/String;
    :goto_0
    return v4

    .line 217
    .restart local v3    # "stateString":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "state":Lorg/json/JSONObject;
    const-string v5, "7_challenge"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "challenge":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/login/LoginFragment;->expectedChallenge:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 220
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v2    # "state":Lorg/json/JSONObject;
    .end local v3    # "stateString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method
