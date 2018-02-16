.class public final Lextern/okhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lextern/okhttp3/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lextern/okhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lextern/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lextern/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILextern/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lextern/okhttp3/CertificatePinner;Lextern/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lextern/okhttp3/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "certificatePinner"    # Lextern/okhttp3/CertificatePinner;
    .param p8, "proxyAuthenticator"    # Lextern/okhttp3/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lextern/okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lextern/okhttp3/CertificatePinner;",
            "Lextern/okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lextern/okhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lextern/okhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lextern/okhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lextern/okhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lextern/okhttp3/HttpUrl$Builder;->port(I)Lextern/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl$Builder;->build()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Address;->url:Lextern/okhttp3/HttpUrl;

    .line 61
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    const-string v0, "http"

    goto :goto_0

    .line 62
    :cond_1
    iput-object p3, p0, Lextern/okhttp3/Address;->dns:Lextern/okhttp3/Dns;

    .line 64
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p4, p0, Lextern/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-nez p8, :cond_3

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    iput-object p8, p0, Lextern/okhttp3/Address;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    .line 72
    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4
    invoke-static {p10}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Address;->protocols:Ljava/util/List;

    .line 75
    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_5
    invoke-static {p11}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 78
    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_6
    iput-object p12, p0, Lextern/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 81
    iput-object p9, p0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 82
    iput-object p5, p0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    iput-object p6, p0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 84
    iput-object p7, p0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    .line 85
    return-void
.end method


# virtual methods
.method public certificatePinner()Lextern/okhttp3/CertificatePinner;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lextern/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lextern/okhttp3/Dns;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lextern/okhttp3/Address;->dns:Lextern/okhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 154
    instance-of v2, p1, Lextern/okhttp3/Address;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 155
    check-cast v0, Lextern/okhttp3/Address;

    .line 156
    .local v0, "that":Lextern/okhttp3/Address;
    iget-object v2, p0, Lextern/okhttp3/Address;->url:Lextern/okhttp3/HttpUrl;

    iget-object v3, v0, Lextern/okhttp3/Address;->url:Lextern/okhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lextern/okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->dns:Lextern/okhttp3/Dns;

    iget-object v3, v0, Lextern/okhttp3/Address;->dns:Lextern/okhttp3/Dns;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    iget-object v3, v0, Lextern/okhttp3/Address;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lextern/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lextern/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lextern/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    iget-object v3, v0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 167
    .end local v0    # "that":Lextern/okhttp3/Address;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 171
    const/16 v0, 0x11

    .line 172
    .local v0, "result":I
    iget-object v1, p0, Lextern/okhttp3/Address;->url:Lextern/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 173
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->dns:Lextern/okhttp3/Dns;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 175
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 176
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 177
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 178
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 179
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 180
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lextern/okhttp3/Address;->certificatePinner:Lextern/okhttp3/CertificatePinner;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 182
    return v0

    :cond_1
    move v1, v2

    .line 178
    goto :goto_0

    :cond_2
    move v1, v2

    .line 179
    goto :goto_1

    :cond_3
    move v1, v2

    .line 180
    goto :goto_2
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lextern/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lextern/okhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lextern/okhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lextern/okhttp3/Authenticator;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lextern/okhttp3/Address;->proxyAuthenticator:Lextern/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lextern/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lextern/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lextern/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public url()Lextern/okhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lextern/okhttp3/Address;->url:Lextern/okhttp3/HttpUrl;

    return-object v0
.end method
