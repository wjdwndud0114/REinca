.class final Lextern/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
.super Lextern/okhttp3/internal/tls/TrustRootIndex;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/tls/TrustRootIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "findByIssuerAndSignatureMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 64
    invoke-direct {p0}, Lextern/okhttp3/internal/tls/TrustRootIndex;-><init>()V

    .line 65
    iput-object p2, p0, Lextern/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 66
    iput-object p1, p0, Lextern/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 67
    return-void
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 71
    :try_start_0
    iget-object v3, p0, Lextern/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lextern/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 73
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 79
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method
