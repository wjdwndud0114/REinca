.class public Lcom/inca/security/AppGuard/SecureObjectFactory;
.super Ljava/lang/Object;
.source "ib"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstanceOfObjectIntegrityManager()Lcom/inca/security/Interface/ObjectIntegrityManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/inca/security/yc;->IiiiIIIIii()Lcom/inca/security/Interface/ObjectIntegrityManager;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureBytes()Lcom/inca/security/Interface/SecureBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/inca/security/yc;->IiiiIIIIii()Lcom/inca/security/Interface/SecureBytes;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureBytes([B)Lcom/inca/security/Interface/SecureBytes;
    .locals 1
    .param p0, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/inca/security/yc;->IiiiIIIIii([B)Lcom/inca/security/Interface/SecureBytes;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureInteger()Lcom/inca/security/Interface/SecureInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/inca/security/yc;->IiiiIIIIii()Lcom/inca/security/Interface/SecureInteger;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureInteger(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 1
    .param p0, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0}, Lcom/inca/security/yc;->IiiiIIIIii(I)Lcom/inca/security/Interface/SecureInteger;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureLong()Lcom/inca/security/Interface/SecureLong;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/inca/security/yc;->IiiiIIIIii()Lcom/inca/security/Interface/SecureLong;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceOfSecureLong(J)Lcom/inca/security/Interface/SecureLong;
    .locals 2
    .param p0, "arg0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/inca/security/yc;->IiiiIIIIii(J)Lcom/inca/security/Interface/SecureLong;

    move-result-object v0

    return-object v0
.end method
