.class public Lcom/inca/security/qa;
.super Ljava/lang/Object;
.source "da"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/xa;->IiiiIIIIii()Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/xa;


# direct methods
.method public constructor <init>(Lcom/inca/security/xa;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/xa;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/inca/security/qa;->IiIiIiiIii:Lcom/inca/security/xa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 234
    const/4 v3, 0x1

    .line 414
    iget-object v0, p0, Lcom/inca/security/qa;->IiIiIiiIii:Lcom/inca/security/xa;

    invoke-static {v0}, Lcom/inca/security/xa;->IiiiIIIIii(Lcom/inca/security/xa;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 331
    array-length v0, v4

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    .line 389
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 329
    aget-byte v0, v4, v2

    xor-int/lit16 v0, v0, 0xea

    int-to-byte v6, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v6, v5, v2

    move v2, v0

    .line 389
    goto :goto_0

    .line 422
    :cond_0
    :try_start_0
    const-string v0, "yE\u0001" #MD5

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 487
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 423
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 369
    iget-object v0, p0, Lcom/inca/security/qa;->IiIiIiiIii:Lcom/inca/security/xa;

    invoke-static {v0}, Lcom/inca/security/xa;->IiiiIIIIii(Lcom/inca/security/xa;)[B

    move-result-object v0

    check-cast v0, [B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :goto_1
    if-eqz v1, :cond_1

    .line 394
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0

    .line 456
    :catch_0
    move-exception v0

    move v1, v3

    goto :goto_1

    .line 308
    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
