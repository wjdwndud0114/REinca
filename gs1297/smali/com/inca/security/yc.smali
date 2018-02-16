.class public Lcom/inca/security/yc;
.super Ljava/lang/Object;
.source "ib"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii()Lcom/inca/security/Interface/ObjectIntegrityManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/AppGuard/SecureLibrary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/AppGuard/SecureLibrary;

    move-result-object v0

    const-string v1, "P\u0008u\u000f|\u001eV\u0004k\u000fx\u0018v\u001ef\'~\u0004~\rz\u0018"

    invoke-static {v1}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inca/security/AppGuard/SecureLibrary;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/ObjectIntegrityManager;

    :goto_0
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii()Lcom/inca/security/Interface/SecureBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureBytes()Lcom/inca/security/Interface/SecureBytes;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii([B)Lcom/inca/security/Interface/SecureBytes;
    .locals 1
    .param p0, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureBytes()Lcom/inca/security/Interface/SecureBytes;

    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Lcom/inca/security/Interface/SecureBytes;->set([B)V

    .line 175
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii()Lcom/inca/security/Interface/SecureInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureInteger()Lcom/inca/security/Interface/SecureInteger;

    move-result-object v0

    :goto_0
    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 1
    .param p0, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureInteger()Lcom/inca/security/Interface/SecureInteger;

    move-result-object v0

    .line 46
    invoke-interface {v0, p0}, Lcom/inca/security/Interface/SecureInteger;->set(I)V

    .line 44
    :goto_0
    return-object v0

    .line 0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii()Lcom/inca/security/Interface/SecureLong;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureLong()Lcom/inca/security/Interface/SecureLong;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii(J)Lcom/inca/security/Interface/SecureLong;
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/inca/security/Interface/ObjectFactory;->newInstanceOfSecureLong()Lcom/inca/security/Interface/SecureLong;

    move-result-object v0

    .line 179
    invoke-interface {v0, p0, p1}, Lcom/inca/security/Interface/SecureLong;->set(J)V

    .line 166
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x70

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x33

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
