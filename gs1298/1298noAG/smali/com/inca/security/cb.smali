.class public Lcom/inca/security/cb;
.super Ljava/lang/Object;
.source "cb"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Ljava/lang/String;

.field private synthetic IiIiIIIiIi:Ljava/lang/String;

.field private synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v3, p0, Lcom/inca/security/cb;->IiiIiiiIiI:Ljava/lang/String;

    .line 165
    iput-object v3, p0, Lcom/inca/security/cb;->IIIIiiIiII:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/inca/security/cb;->IiIiIIIiIi:Ljava/lang/String;

    .line 182
    iput-object v3, p0, Lcom/inca/security/cb;->IIIiiiiIII:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/inca/security/cb;->IiIiIiiIii:Ljava/lang/String;

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 0
    array-length v6, v5

    const/4 v1, 0x0

    move v4, v1

    .end local p0    # "this":Lcom/inca/security/cb;
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 67
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 96
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    const-string v1, "l\u007f\u0004s"

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    :try_start_1
    const-string v2, "`8rA"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    move-object v0, p0

    .line 65
    .local v0, "this":Lcom/inca/security/cb;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/inca/security/cb;->IIIIiiIiII:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/inca/security/cb;->IiIiIIIiIi:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/inca/security/cb;->IIIiiiiIII:Ljava/lang/String;

    .line 176
    iget-object v8, p0, Lcom/inca/security/cb;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    iget-object v8, p0, Lcom/inca/security/cb;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/inca/security/va;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/inca/security/cb;->IiIiIiiIii:Ljava/lang/String;

    .line 205
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 153
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    add-int/lit8 v1, v4, 0x1

    invoke-static {v2}, Lcom/inca/security/va;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inca/security/cb;->IiiIiiiIiI:Ljava/lang/String;

    .line 40
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v1

    .line 0
    goto :goto_0

    .line 180
    .end local v0    # "this":Lcom/inca/security/cb;
    :catch_0
    move-exception v2

    .line 146
    :try_start_3
    const-string v2, "\u0019|\u000b\u0019{"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    move-object v0, p0

    .line 166
    .restart local v0    # "this":Lcom/inca/security/cb;
    goto :goto_1

    .line 123
    .end local v0    # "this":Lcom/inca/security/cb;
    :catch_1
    move-exception v2

    move-object v0, p0

    .restart local v0    # "this":Lcom/inca/security/cb;
    move-object v2, v3

    .line 65
    goto :goto_1

    .line 78
    .end local v0    # "this":Lcom/inca/security/cb;
    :catch_2
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public IIiIIiIiIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/inca/security/cb;->IiIiIiiIii:Ljava/lang/String;

    return-object v0
.end method

.method public IiIiiIiiII()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inca/security/cb;->IiiIiiiIiI:Ljava/lang/String;

    return-object v0
.end method

.method public IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/inca/security/cb;->IiIiIIIiIi:Ljava/lang/String;

    return-object v0
.end method

.method public iIiIIiIIIi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/inca/security/cb;->IIIIiiIiII:Ljava/lang/String;

    return-object v0
.end method

.method public iiiiiiiIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inca/security/cb;->IIIiiiiIII:Ljava/lang/String;

    return-object v0
.end method
