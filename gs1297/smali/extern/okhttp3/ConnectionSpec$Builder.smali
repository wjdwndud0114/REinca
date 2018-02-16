.class public final Lextern/okhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lextern/okhttp3/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lextern/okhttp3/ConnectionSpec;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    # getter for: Lextern/okhttp3/ConnectionSpec;->tls:Z
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec;->access$400(Lextern/okhttp3/ConnectionSpec;)Z

    move-result v0

    iput-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 264
    # getter for: Lextern/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec;->access$500(Lextern/okhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 265
    # getter for: Lextern/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec;->access$600(Lextern/okhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 266
    # getter for: Lextern/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z
    invoke-static {p1}, Lextern/okhttp3/ConnectionSpec;->access$700(Lextern/okhttp3/ConnectionSpec;)Z

    move-result v0

    iput-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 267
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean p1, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 260
    return-void
.end method

.method static synthetic access$000(Lextern/okhttp3/ConnectionSpec$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec$Builder;

    .prologue
    .line 252
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method static synthetic access$100(Lextern/okhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec$Builder;

    .prologue
    .line 252
    iget-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lextern/okhttp3/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec$Builder;

    .prologue
    .line 252
    iget-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lextern/okhttp3/ConnectionSpec$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lextern/okhttp3/ConnectionSpec$Builder;

    .prologue
    .line 252
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method


# virtual methods
.method public allEnabledCipherSuites()Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public allEnabledTlsVersions()Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public build()Lextern/okhttp3/ConnectionSpec;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lextern/okhttp3/ConnectionSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/ConnectionSpec;-><init>(Lextern/okhttp3/ConnectionSpec$Builder;Lextern/okhttp3/ConnectionSpec$1;)V

    return-object v0
.end method

.method public varargs cipherSuites([Lextern/okhttp3/CipherSuite;)Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 4
    .param p1, "cipherSuites"    # [Lextern/okhttp3/CipherSuite;

    .prologue
    .line 276
    iget-boolean v2, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no cipher suites for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 279
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 280
    aget-object v2, p1, v0

    iget-object v2, v2, Lextern/okhttp3/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    return-object v2
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 286
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public supportsTlsExtensions(Z)Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-boolean p1, p0, Lextern/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 327
    return-object p0
.end method

.method public varargs tlsVersions([Lextern/okhttp3/TlsVersion;)Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 4
    .param p1, "tlsVersions"    # [Lextern/okhttp3/TlsVersion;

    .prologue
    .line 303
    iget-boolean v2, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no TLS versions for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 305
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 306
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 307
    aget-object v2, p1, v0

    iget-object v2, v2, Lextern/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, v1}, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    return-object v2
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lextern/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .prologue
    .line 314
    iget-boolean v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lextern/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 321
    return-object p0
.end method
