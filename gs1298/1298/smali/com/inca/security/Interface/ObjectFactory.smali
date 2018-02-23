.class public interface abstract Lcom/inca/security/Interface/ObjectFactory;
.super Ljava/lang/Object;
.source "b"


# virtual methods
.method public abstract createObject(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation
.end method

.method public abstract newInstanceOfSecureBytes()Lcom/inca/security/Interface/SecureBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation
.end method

.method public abstract newInstanceOfSecureInteger()Lcom/inca/security/Interface/SecureInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation
.end method

.method public abstract newInstanceOfSecureLong()Lcom/inca/security/Interface/SecureLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation
.end method
