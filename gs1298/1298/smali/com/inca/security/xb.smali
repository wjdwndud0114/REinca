.class public Lcom/inca/security/xb;
.super Ljava/lang/Object;
.source "ta" #ta

# interfaces
.implements Lcom/inca/security/Interface/SecureBytes;


# instance fields
.field private synthetic IIIIiiIiII:Ljavax/crypto/Cipher;

.field private synthetic IIIiiiiIII:Ljavax/crypto/Cipher;

.field private synthetic IiIiIiiIii:[B

.field private synthetic IiiIiiiIiI:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object v0, p0, Lcom/inca/security/xb;->IiIiIiiIii:[B

    .line 44
    invoke-direct {p0}, Lcom/inca/security/xb;->IiiiIIIIii()V

    .line 106
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "arg0"    # [B

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object v0, p0, Lcom/inca/security/xb;->IiIiIiiIii:[B

    .line 67
    invoke-direct {p0}, Lcom/inca/security/xb;->IiiiIIIIii()V

    .line 161
    invoke-virtual {p0, p1}, Lcom/inca/security/xb;->set([B)V

    .line 58
    return-void
.end method

.method private synthetic IiiiIIIIii()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    const-string v0, "uDg" #AES

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 180
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 146
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xb;->IiiIiiiIiI:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :try_start_1
    const-string v0, "NH\\"

    const-string v1, "NH\\"

    invoke-static {v1}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/xb;->IIIIiiIiII:Ljavax/crypto/Cipher;

    .line 81
    iget-object v1, p0, Lcom/inca/security/xb;->IIIIiiIiII:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/inca/security/xb;->IiiIiiiIiI:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const-string v5, "uDg" #AES

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-static {v0}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xb;->IIIiiiiIII:Ljavax/crypto/Cipher;

    .line 16
    iget-object v0, p0, Lcom/inca/security/xb;->IIIiiiiIII:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/inca/security/xb;->IiiIiiiIiI:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const-string v4, "uDg" #AES

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 176
    :catch_2
    move-exception v0

    .line 115
    :try_start_3
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public get()[B
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/xb;->IIIiiiiIII:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/inca/security/xb;->IiIiIiiIii:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public set([B)V
    .locals 1
    .param p1, "arg0"    # [B

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/xb;->IIIIiiIiII:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/xb;->IiIiIiiIii:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method
