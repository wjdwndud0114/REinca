.class public Lcom/inca/security/AppGuard/AppGuardClientInternal;
.super Lcom/inca/security/mg;
.source "bc"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/AppGuard/AppGuardClientInternal$Update;,
        Lcom/inca/security/AppGuard/AppGuardClientInternal$Command;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/AppGuard/AppGuardEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/inca/security/mg;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;ZZ)V

    .line 161
    return-void
.end method

.method public static getUniqueClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/inca/security/mg;->getUniqueClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryUpdatable(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/inca/security/mg;->queryUpdatable(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setSecureScreen(Landroid/view/Window;)Z
    .locals 2
    .param p0, "arg0"    # Landroid/view/Window;

    .prologue
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 206
    const/16 v1, 0x2000

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 167
    :goto_0
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/inca/security/mg;->cleanup()V

    .line 115
    return-void
.end method

.method public focuschanged(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/inca/security/mg;->focuschanged(Z)V

    .line 175
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/inca/security/mg;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/inca/security/mg;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isResetCompleted()Z
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/inca/security/mg;->isResetCompleted()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Lcom/inca/security/mg;->pause()V

    .line 123
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/inca/security/mg;->reset()V

    .line 160
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/inca/security/mg;->resume()V

    .line 65
    return-void
.end method

.method public setCallbackHandler(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Handler;
    .param p2, "arg1"    # Landroid/os/Handler;
    .param p3, "arg2"    # Landroid/os/Handler;

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/inca/security/mg;->setCallbackHandler(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 66
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setConnectionTimeout(I)V

    .line 199
    return-void
.end method

.method public setEventListener(Lcom/inca/security/AppGuard/AppGuardEventListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/AppGuard/AppGuardEventListener;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setEventListener(Lcom/inca/security/AppGuard/AppGuardEventListener;)V

    .line 164
    return-void
.end method

.method public setReserved1(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setReserved1(I)V

    .line 68
    return-void
.end method

.method public setUniqueClientID(Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/inca/security/mg;->setUniqueClientID(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setUserId(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public traceTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/inca/security/mg;->traceTouchEvent(Landroid/view/MotionEvent;)V

    .line 163
    return-void
.end method
