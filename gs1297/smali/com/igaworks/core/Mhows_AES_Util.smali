.class public Lcom/igaworks/core/Mhows_AES_Util;
.super Ljava/lang/Object;
.source "Mhows_AES_Util.java"


# static fields
.field public static key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    sput-object v0, Lcom/igaworks/core/Mhows_AES_Util;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    const-string v4, "azF0Mm0zaDRvNXc3czhrdDltOGg3bzZ3NXM0bWhvd3M="

    invoke-static {v4}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/igaworks/core/Mhows_AES_Util;->key:Ljava/lang/String;

    .line 28
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/igaworks/core/Mhows_AES_Util;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/PKCS5PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 30
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 31
    invoke-static {p0}, Lcom/igaworks/util/IgawBase64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 32
    .local v1, "original":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 33
    .local v2, "originalString":Ljava/lang/String;
    return-object v2
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    const-string v4, "azF0Mm0zaDRvNXc3czhrdDltOGg3bzZ3NXM0bWhvd3M="

    invoke-static {v4}, Lcom/igaworks/util/IgawBase64;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/igaworks/core/Mhows_AES_Util;->key:Ljava/lang/String;

    .line 15
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/igaworks/core/Mhows_AES_Util;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/PKCS5PADDING"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 17
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 19
    .local v1, "encrypted":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/igaworks/util/IgawBase64;->encode([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 21
    .local v3, "strReturn":Ljava/lang/String;
    return-object v3
.end method
