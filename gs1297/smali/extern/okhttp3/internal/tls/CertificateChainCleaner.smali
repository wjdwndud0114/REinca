.class public abstract Lextern/okhttp3/internal/tls/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 42
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lextern/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    return-object v0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lextern/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 2
    .param p0, "caCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 46
    new-instance v0, Lextern/okhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-static {p0}, Lextern/okhttp3/internal/tls/TrustRootIndex;->get([Ljava/security/cert/X509Certificate;)Lextern/okhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lextern/okhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lextern/okhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method


# virtual methods
.method public abstract clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
