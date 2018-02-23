.class public Lcom/inca/security/nb;
.super Ljava/lang/Object;
.source "db"


# instance fields
.field private synthetic IiIiIiiIii:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/inca/security/nb;->IiIiIiiIii:Ljavax/crypto/Cipher;

    .line 124
    return-void
.end method


# virtual methods
.method public IiiiIIIIii(I[B)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 19
    new-array v0, v2, [B

    .line 44
    if-eqz p2, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 0
    :try_start_0
    const-string v1, "y\u0005k|" #SHA1

    invoke-static {v1}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 166
    :goto_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "\u000co\u001e" #AES

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    const-string v0, "b\u0015p" #AES

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/nb;->IiIiIiiIii:Ljavax/crypto/Cipher;

    .line 65
    iget-object v0, p0, Lcom/inca/security/nb;->IiIiIiiIii:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 16
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 161
    :try_start_1
    const-string v1, "p\u0018b}\u0012" #SHA-1

    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public IiiiIIIIii([BI)[B
    .locals 2
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inca/security/nb;->IiIiIiiIii:Ljavax/crypto/Cipher;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0
.end method
