.class public final Lextern/okhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lextern/okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lextern/okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tlsVersion"    # Lextern/okhttp3/TlsVersion;
    .param p2, "cipherSuite"    # Lextern/okhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/TlsVersion;",
            "Lextern/okhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lextern/okhttp3/Handshake;->tlsVersion:Lextern/okhttp3/TlsVersion;

    .line 44
    iput-object p2, p0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    .line 45
    iput-object p3, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static get(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lextern/okhttp3/Handshake;
    .locals 3
    .param p0, "tlsVersion"    # Lextern/okhttp3/TlsVersion;
    .param p1, "cipherSuite"    # Lextern/okhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/TlsVersion;",
            "Lextern/okhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lextern/okhttp3/Handshake;"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Lextern/okhttp3/Handshake;

    invoke-static {p2}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lextern/okhttp3/Handshake;-><init>(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lextern/okhttp3/Handshake;
    .locals 11
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "cipherSuiteString":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "cipherSuite == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 52
    :cond_0
    invoke-static {v1}, Lextern/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/CipherSuite;

    move-result-object v0

    .line 54
    .local v0, "cipherSuite":Lextern/okhttp3/CipherSuite;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "tlsVersionString":Ljava/lang/String;
    if-nez v8, :cond_1

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "tlsVersion == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 56
    :cond_1
    invoke-static {v8}, Lextern/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;

    move-result-object v7

    .line 60
    .local v7, "tlsVersion":Lextern/okhttp3/TlsVersion;
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 64
    .local v5, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v5, :cond_2

    invoke-static {v5}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 68
    .local v6, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 69
    .local v3, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_3

    invoke-static {v3}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 73
    .local v4, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    new-instance v9, Lextern/okhttp3/Handshake;

    invoke-direct {v9, v7, v0, v6, v4}, Lextern/okhttp3/Handshake;-><init>(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v9

    .line 61
    .end local v3    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v4    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v5    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v6    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v5, 0x0

    .restart local v5    # "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    .line 64
    .end local v2    # "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_1

    .line 69
    .restart local v3    # "localCertificates":[Ljava/security/cert/Certificate;
    .restart local v6    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public cipherSuite()Lextern/okhttp3/CipherSuite;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 121
    instance-of v2, p1, Lextern/okhttp3/Handshake;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 122
    check-cast v0, Lextern/okhttp3/Handshake;

    .line 123
    .local v0, "that":Lextern/okhttp3/Handshake;
    iget-object v2, p0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    iget-object v3, v0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    iget-object v3, v0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v3, v0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object v3, v0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x11

    .line 131
    .local v0, "result":I
    iget-object v1, p0, Lextern/okhttp3/Handshake;->tlsVersion:Lextern/okhttp3/TlsVersion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lextern/okhttp3/Handshake;->tlsVersion:Lextern/okhttp3/TlsVersion;

    invoke-virtual {v1}, Lextern/okhttp3/TlsVersion;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 132
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lextern/okhttp3/Handshake;->cipherSuite:Lextern/okhttp3/CipherSuite;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 133
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 135
    return v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tlsVersion()Lextern/okhttp3/TlsVersion;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lextern/okhttp3/Handshake;->tlsVersion:Lextern/okhttp3/TlsVersion;

    return-object v0
.end method
