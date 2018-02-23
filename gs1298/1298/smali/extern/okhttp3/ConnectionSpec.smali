.class public final Lextern/okhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/ConnectionSpec$1;,
        Lextern/okhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lextern/okhttp3/CipherSuite;

.field public static final CLEARTEXT:Lextern/okhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lextern/okhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Lextern/okhttp3/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field private final supportsTlsExtensions:Z

.field private final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [Lextern/okhttp3/CipherSuite;

    sget-object v1, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lextern/okhttp3/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lextern/okhttp3/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lextern/okhttp3/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lextern/okhttp3/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lextern/okhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lextern/okhttp3/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lextern/okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lextern/okhttp3/CipherSuite;

    .line 67
    new-instance v0, Lextern/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lextern/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lextern/okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lextern/okhttp3/CipherSuite;

    invoke-virtual {v0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites([Lextern/okhttp3/CipherSuite;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lextern/okhttp3/TlsVersion;

    sget-object v2, Lextern/okhttp3/TlsVersion;->TLS_1_2:Lextern/okhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lextern/okhttp3/TlsVersion;->TLS_1_1:Lextern/okhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lextern/okhttp3/TlsVersion;->TLS_1_0:Lextern/okhttp3/TlsVersion;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions([Lextern/okhttp3/TlsVersion;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/ConnectionSpec$Builder;->build()Lextern/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/ConnectionSpec;->MODERN_TLS:Lextern/okhttp3/ConnectionSpec;

    .line 74
    new-instance v0, Lextern/okhttp3/ConnectionSpec$Builder;

    sget-object v1, Lextern/okhttp3/ConnectionSpec;->MODERN_TLS:Lextern/okhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;-><init>(Lextern/okhttp3/ConnectionSpec;)V

    new-array v1, v3, [Lextern/okhttp3/TlsVersion;

    sget-object v2, Lextern/okhttp3/TlsVersion;->TLS_1_0:Lextern/okhttp3/TlsVersion;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions([Lextern/okhttp3/TlsVersion;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/ConnectionSpec$Builder;->build()Lextern/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lextern/okhttp3/ConnectionSpec;

    .line 80
    new-instance v0, Lextern/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lextern/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lextern/okhttp3/ConnectionSpec$Builder;->build()Lextern/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/ConnectionSpec;->CLEARTEXT:Lextern/okhttp3/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lextern/okhttp3/ConnectionSpec$Builder;)V
    .locals 1
    .param p1, "builder"    # Lextern/okhttp3/ConnectionSpec$Builder;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    # getter for: Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec$Builder;->access$000(Lextern/okhttp3/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    .line 89
    # getter for: Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec$Builder;->access$100(Lextern/okhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 90
    # getter for: Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec$Builder;->access$200(Lextern/okhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 91
    # getter for: Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec$Builder;->access$300(Lextern/okhttp3/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/ConnectionSpec$Builder;Lextern/okhttp3/ConnectionSpec$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/ConnectionSpec$Builder;
    .param p2, "x1"    # Lextern/okhttp3/ConnectionSpec$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lextern/okhttp3/ConnectionSpec;-><init>(Lextern/okhttp3/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lextern/okhttp3/ConnectionSpec;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec;

    .prologue
    .line 39
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method static synthetic access$500(Lextern/okhttp3/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec;

    .prologue
    .line 39
    iget-object v0, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lextern/okhttp3/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec;

    .prologue
    .line 39
    iget-object v0, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lextern/okhttp3/ConnectionSpec;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec;

    .prologue
    .line 39
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 201
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 205
    .local v3, "toFind":Ljava/lang/String;
    invoke-static {p1, v3}, Lextern/okhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 206
    const/4 v4, 0x1

    goto :goto_0

    .line 204
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lextern/okhttp3/ConnectionSpec;
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 147
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lextern/okhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    .line 150
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lextern/okhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    .line 156
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 157
    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v2}, Lextern/okhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    new-instance v2, Lextern/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lextern/okhttp3/ConnectionSpec$Builder;-><init>(Lextern/okhttp3/ConnectionSpec;)V

    invoke-virtual {v2, v0}, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/ConnectionSpec$Builder;->build()Lextern/okhttp3/ConnectionSpec;

    move-result-object v2

    return-object v2

    .line 147
    .end local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    .end local v1    # "tlsVersionsIntersection":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    .restart local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lextern/okhttp3/ConnectionSpec;

    move-result-object v0

    .line 134
    .local v0, "specToApply":Lextern/okhttp3/ConnectionSpec;
    iget-object v1, v0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, v0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v1, v0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, v0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 105
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lextern/okhttp3/CipherSuite;

    .line 106
    .local v1, "result":[Lextern/okhttp3/CipherSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lextern/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v1}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    instance-of v3, p1, Lextern/okhttp3/ConnectionSpec;

    if-nez v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 216
    check-cast v0, Lextern/okhttp3/ConnectionSpec;

    .line 217
    .local v0, "that":Lextern/okhttp3/ConnectionSpec;
    iget-boolean v3, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    iget-boolean v4, v0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    if-ne v3, v4, :cond_0

    .line 219
    iget-boolean v3, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_3

    .line 220
    iget-object v3, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-boolean v3, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 225
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 229
    const/16 v0, 0x11

    .line 230
    .local v0, "result":I
    iget-boolean v1, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 232
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 233
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 235
    :cond_0
    return v0

    .line 233
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-boolean v1, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget-object v1, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lextern/okhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :cond_2
    iget-object v1, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lextern/okhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTls()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 123
    :goto_0
    return-object v2

    .line 119
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lextern/okhttp3/TlsVersion;

    .line 120
    .local v1, "result":[Lextern/okhttp3/TlsVersion;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lextern/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_1
    invoke-static {v1}, Lextern/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    iget-boolean v2, p0, Lextern/okhttp3/ConnectionSpec;->tls:Z

    if-nez v2, :cond_0

    .line 240
    const-string v2, "ConnectionSpec()"

    .line 245
    :goto_0
    return-object v2

    .line 243
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lextern/okhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lextern/okhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 243
    .end local v0    # "cipherSuitesString":Ljava/lang/String;
    .end local v1    # "tlsVersionsString":Ljava/lang/String;
    :cond_1
    const-string v0, "[all enabled]"

    goto :goto_1

    .line 244
    .restart local v0    # "cipherSuitesString":Ljava/lang/String;
    :cond_2
    const-string v1, "[all enabled]"

    goto :goto_2
.end method
