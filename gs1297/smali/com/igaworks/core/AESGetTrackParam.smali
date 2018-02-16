.class public Lcom/igaworks/core/AESGetTrackParam;
.super Ljava/lang/Object;
.source "AESGetTrackParam.java"


# static fields
.field private static IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    sput-object v0, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "encrypted"    # Ljava/lang/String;
    .param p1, "hashkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const-string v5, "c3JrdGVyb3dnYXdyc296ZXJydWx5ODJuZmlqNjI1dzk="

    invoke-static {v5}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "IGAW_TRACKING_SUPER_KEY":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/PKCS5PADDING"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 75
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 76
    invoke-static {p0}, Lcom/igaworks/util/IgawBase64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 77
    .local v2, "original":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 78
    .local v3, "originalString":Ljava/lang/String;
    return-object v3
.end method

.method public static decrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "encrypted"    # Ljava/lang/String;
    .param p1, "hashkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    .line 84
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 85
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/PKCS5PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 86
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 87
    invoke-static {p0}, Lcom/igaworks/util/IgawBase64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 88
    .local v1, "original":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 89
    .local v2, "originalString":Ljava/lang/String;
    return-object v2
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "hashkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    const-string v9, "c3JrdGVyb3dnYXdyc296ZXJydWx5ODJuZmlqNjI1dzk="

    invoke-static {v9}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "IGAW_TRACKING_SUPER_KEY":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 19
    .local v4, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v6, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES/CBC/PKCS5PADDING"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 21
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 24
    .local v2, "encrypted":[B
    if-eqz v2, :cond_0

    array-length v9, v2

    if-nez v9, :cond_1

    .line 25
    :cond_0
    const/4 v7, 0x0

    .line 38
    :goto_0
    return-object v7

    .line 29
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v9, v2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 31
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_2

    .line 32
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

    .line 34
    .local v3, "hexNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 36
    .end local v3    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "strReturn":Ljava/lang/String;
    goto :goto_0
.end method

.method public static encrypt_hashkey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "hashkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    .line 44
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 45
    .local v3, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lcom/igaworks/core/AESGetTrackParam;->IGAW_COMPLETE_SUPER_KEY:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v5, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 46
    .local v5, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES/CBC/PKCS5PADDING"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 47
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 50
    .local v1, "encrypted":[B
    if-eqz v1, :cond_0

    array-length v8, v1

    if-nez v8, :cond_1

    .line 51
    :cond_0
    const/4 v6, 0x0

    .line 64
    :goto_0
    return-object v6

    .line 55
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v8, v1

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_2

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v7

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "hexNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 62
    .end local v2    # "hexNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "strReturn":Ljava/lang/String;
    goto :goto_0
.end method
