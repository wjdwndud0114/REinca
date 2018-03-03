.class public Lcom/igaworks/core/AESGetPuid;
.super Ljava/lang/Object;
.source "AESGetPuid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v5, "aWdhd29ya3MxazBpMWQ0YTZlMmk1ZzBhand5b2Jya3M="

    invoke-static {v5}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "IGAW_AES_SUPER_KEY":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/PKCS5PADDING"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 45
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    invoke-static {p0}, Lcom/igaworks/util/IgawBase64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 47
    .local v2, "original":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v3, "originalString":Ljava/lang/String;
    return-object v3
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    const-string v9, "aWdhd29ya3MxazBpMWQ0YTZlMmk1ZzBhand5b2Jya3M="

    invoke-static {v9}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "IGAW_AES_SUPER_KEY":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 16
    .local v4, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v6, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 17
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES/CBC/PKCS5PADDING"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 18
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 21
    .local v2, "encrypted":[B
    if-eqz v2, :cond_0

    array-length v9, v2

    if-nez v9, :cond_1

    .line 22
    :cond_0
    const/4 v7, 0x0

    .line 35
    :goto_0
    return-object v7

    .line 26
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v9, v2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_2

    .line 29
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v2, v8

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "hexNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 33
    .end local v3    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "strReturn":Ljava/lang/String;
    goto :goto_0
.end method
