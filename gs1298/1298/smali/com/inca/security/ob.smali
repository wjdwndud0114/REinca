.class public Lcom/inca/security/ob;
.super Ljava/lang/Object;
.source "ya" #ya

# interfaces
.implements Lcom/inca/security/Interface/ObjectFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    const-string v0, "[5k%z5A>|5o5z" #SecureInteger

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {v0}, Lcom/inca/security/sb;-><init>()V

    .line 182
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "\u007f~On^~`tB|" #SecureLong

    invoke-static {v0}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {v0}, Lcom/inca/security/kb;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "x^~MoITNqIxX3\u007fo^rB|\u000ctNqIxXUMvI2" #createObject(String objectName)

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_1
    :try_start_1
    const-string v0, "[5k%z5J)|5{" #SecureBytes

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Lcom/inca/security/xb;

    invoke-direct {v0}, Lcom/inca/security/xb;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstanceOfSecureBytes()Lcom/inca/security/Interface/SecureBytes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    const-string v0, "[5k%z5J)|5{" #SecureBytes

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inca/security/ob;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureBytes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "B~[RBhXzBxITJHIxYiIYUoIh\u00042" #newInstanceOfSecureBytes()

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newInstanceOfSecureInteger()Lcom/inca/security/Interface/SecureInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    const-string v1, "[5k%z5A>|5o5z" #SecureInteger

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inca/security/ob;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inca/security/Interface/SecureInteger;

    .line 117
    invoke-static {}, Lcom/inca/security/zb;->IiiiIIIIii()Lcom/inca/security/zb;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/inca/security/Interface/BaseVerifier;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/inca/security/zb;->IiiiIIIIii(Lcom/inca/security/Interface/BaseVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v1

    .line 97
    :catch_0
    move-exception v1

    .line 105
    new-instance v2, Lcom/inca/security/Exception/AppGuardException;

    const-string v3, "B~[RBhXzBxITJHIxYiIRBoI|Ii\u00042" #newInstanceOfSecureInteger()

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public newInstanceOfSecureLong()Lcom/inca/security/Interface/SecureLong;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    const-string v1, "\u0003m3}\"m\u001cg>o" #SecureLong

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inca/security/ob;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inca/security/Interface/SecureLong;

    .line 166
    invoke-static {}, Lcom/inca/security/zb;->IiiiIIIIii()Lcom/inca/security/zb;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/inca/security/Interface/BaseVerifier;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/inca/security/zb;->IiiiIIIIii(Lcom/inca/security/Interface/BaseVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v1

    .line 168
    :catch_0
    move-exception v1

    .line 65
    new-instance v2, Lcom/inca/security/Exception/AppGuardException;

    const-string v3, "B~[RBhXzBxITJHIxYiIRBoI|Ii\u00042" #newInstanceOfSecureInteger()

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
