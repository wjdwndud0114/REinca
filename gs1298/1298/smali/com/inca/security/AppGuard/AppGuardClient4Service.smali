.class public Lcom/inca/security/AppGuard/AppGuardClient4Service;
.super Lcom/inca/security/mg;
.source "zc"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/AppGuard/AppGuardEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/inca/security/mg;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;ZZ)V

    .line 72
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/inca/security/mg;->cleanup()V

    .line 105
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/inca/security/mg;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/inca/security/mg;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/inca/security/mg;->pause()V

    .line 106
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/inca/security/mg;->resume()V

    .line 161
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setConnectionTimeout(I)V

    .line 65
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/inca/security/mg;->setUserId(Ljava/lang/String;)V

    .line 115
    return-void
.end method
