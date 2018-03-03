.class public Lcom/inca/security/ca;
.super Ljava/lang/Object;
.source "ra"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IIiIIiIiIi([B[B)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B

    .prologue
    .line 48
    .line 153
    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 25
    const-string v2, "]^N"

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 119
    const-string v2, "\u001fy\u000c\u0005\u0003e\u0003obz\u0006i\u001e\u001b\u001dK)N$D*"

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 174
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 130
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 26
    :catch_1
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_2
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    .line 159
    :catch_3
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 126
    :catch_4
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 114
    :catch_5
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static IiiiIIIIii(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)[B
    .locals 4
    .param p0, "arg0"    # Ljava/math/BigInteger;
    .param p1, "arg1"    # Ljava/math/BigInteger;
    .param p2, "arg2"    # [B

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 106
    :try_start_0
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 181
    const-string v2, "]^N"

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 0
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 96
    const-string v2, "\u001fy\u000c\u0005\u0003e\u0003obz\u0006i\u001e\u001b\u001dK)N$D*"

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 161
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 117
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    .line 195
    :catch_2
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 123
    :catch_3
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 166
    :catch_4
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 168
    :catch_5
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static IiiiIIIIii([B[B)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B

    .prologue
    .line 204
    .line 66
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "NH\\"

    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 133
    :try_start_0
    const-string v2, "\u000co\u001e"

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 170
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 163
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 15
    :catch_2
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 125
    :catch_3
    move-exception v1

    .line 194
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 202
    :catch_4
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static iIiIIiIIIi([B[B)[B
    .locals 4
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 109
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "NH\\"

    invoke-static {v2}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    :try_start_0
    const-string v2, "\u000co\u001e"

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 39
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 93
    :catch_2
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 198
    :catch_3
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 201
    :catch_4
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method
