.class public Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
.super Ljava/lang/Object;
.source "sc"


# instance fields
.field private synthetic IIIIiiIiII:Landroid/os/Handler;

.field private synthetic IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;

.field private synthetic IiiIiiiIiI:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v4, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;

    .line 56
    :try_start_0
    new-instance v1, Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-direct {v1}, Lcom/inca/security/AppGuard/AppGuardClient;-><init>()V

    iput-object v1, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 181
    .end local p0    # "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    .local v0, "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    :goto_0
    new-instance v1, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$1;-><init>(Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiiIiiiIiI:Landroid/os/Handler;

    .line 22
    new-instance v1, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$2;-><init>(Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IIIIiiIiII:Landroid/os/Handler;

    .line 179
    iget-object v1, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;

    iget-object v2, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiiIiiiIiI:Landroid/os/Handler;

    iget-object v3, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IIIIiiIiII:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v3}, Lcom/inca/security/AppGuard/AppGuardClient;->setCallbackHandler(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 166
    return-void

    .line 19
    .end local v0    # "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    .restart local p0    # "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Lcom/inca/security/Exception/AppGuardException;->printStackTrace()V

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    .restart local v0    # "this":Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    goto :goto_0
.end method


# virtual methods
.method public setUniqueClientID(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0, p1, p2}, Lcom/inca/security/AppGuard/AppGuardClient;->setUniqueClientID(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClient;

    invoke-virtual {v0, p1}, Lcom/inca/security/AppGuard/AppGuardClient;->setUserId(Ljava/lang/String;)V

    .line 115
    return-void
.end method
