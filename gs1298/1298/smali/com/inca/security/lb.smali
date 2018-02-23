.class public Lcom/inca/security/lb;
.super Ljava/lang/Object;
.source "pb"


# static fields
.field private static final synthetic IIIIiiIiII:I = 0x1


# instance fields
.field private final synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u001b" #/

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static synthetic IiiiIIIIii([B)I
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 1124
    .line 746
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x0

    .line 888
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 725
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1340
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 1301
    return v0
.end method

.method public static synthetic IiiiIIIIii([B)Ljava/lang/String;
    .locals 6
    .param p0, "arg0"    # [B

    .prologue
    const/4 v1, 0x0

    .line 597
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 638
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 1422
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[" #0

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1534
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v5, -0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v0

    .line 1422
    goto :goto_1

    .line 613
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public synthetic IiiiIIIIii(Ljava/lang/String;)I
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1286
    const/4 v3, 0x0

    .line 1022
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    const/16 v1, 0x10

    :try_start_1
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 788
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 946
    aget-byte v3, v1, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v1, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x58

    if-eq v3, v4, :cond_2

    .line 1564
    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1095
    :cond_1
    :goto_0
    return v0

    .line 1463
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 608
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 815
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 1173
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 1095
    invoke-static {v1}, Lcom/inca/security/lb;->IiiiIIIIii([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 1564
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v1

    goto :goto_0

    .line 863
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 703
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1564
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1366
    :catch_2
    move-exception v1

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 1564
    :goto_2
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 844
    :cond_3
    :goto_3
    throw v0

    .line 1366
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    .line 867
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 863
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public synthetic IiiiIIIIii([B)V #init with key
    .locals 7
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    const-string v0, "\u0001\"\u001d\"E0\u000e \u001e1\u00027\u0012m\u00183\u000e E\u001b^sR\u0006\u0005 \u0004\'\u000e\' &\u0012\u0010\u001b&\u0008" #java.security.spec.X509EncodedKeySpec

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 122
    const/4 v2, 0x0

    const-class v3, [B

    aput-object v3, v1, v2

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    const-string v1, "kUwU/GdWtFh@x\u001aJQxr`Wu[sM" #java.security.KeyFactory

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    const-string v2, "\u000c&\u001f\n\u00050\u001f\"\u0005 \u000e" #getInstance

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fRu" #RSA

    invoke-static {v6}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 203
    const-string v3, "$\u000e-\u000e1\n7\u000e\u0013\u001e!\u0007*\u0008" #generatePublic

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "kUwU/GdWtFh@x\u001arDdW/\u007fdMRDdW" #java.security.spec.KeySpec

    invoke-static {v6}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 149
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic IiiiIIIIii([B[B[B)V
    .locals 12
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # [B
    .param p3, "arg2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 120
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 180
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v6, v1

    move v1, v0

    .line 120
    goto :goto_0

    .line 81
    :cond_0
    array-length v0, p2

    div-int/lit8 v0, v0, 0x4

    new-array v7, v0, [I

    .line 65
    const/4 v0, 0x0

    const/16 v2, 0x18

    .line 16
    const/4 v1, 0x0

    .line 61
    const/4 v3, 0x0

    aput v3, v7, v1

    move v3, v0

    .line 112
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_3

    .line 176
    aget v0, v7, v1

    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    aput v0, v7, v1

    .line 115
    if-nez v2, :cond_2

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 141
    const/16 v2, 0x18

    .line 205
    array-length v0, v7

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    aput v0, v7, v1

    .line 78
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    .line 119
    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .line 174
    :goto_3
    array-length v2, v7

    if-ge v0, v2, :cond_5

    .line 155
    const/16 v0, 0x20

    .line 130
    aget v4, v7, v1

    .line 32
    add-int/lit8 v2, v1, 0x1

    aget v3, v7, v2

    .line 190
    const v2, -0x3910c8e0

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 26
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_4

    .line 139
    shl-int/lit8 v0, v5, 0x4

    const/4 v8, 0x2

    aget v8, v6, v8

    add-int/2addr v0, v8

    xor-int/2addr v0, v5

    ushr-int/lit8 v8, v5, 0x5

    xor-int/2addr v8, v3

    add-int/2addr v0, v8

    const/4 v8, 0x3

    aget v8, v6, v8

    add-int/2addr v0, v8

    sub-int/2addr v4, v0

    .line 199
    shl-int/lit8 v0, v4, 0x4

    const/4 v8, 0x0

    aget v8, v6, v8

    add-int/2addr v0, v8

    xor-int/2addr v0, v4

    ushr-int/lit8 v8, v4, 0x5

    xor-int/2addr v8, v3

    add-int/2addr v0, v8

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v0, v8

    sub-int/2addr v5, v0

    .line 8
    const v0, 0x61c88647

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_4

    .line 50
    :cond_4
    aput v5, v7, v1

    .line 126
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, v1, 0x2

    aput v4, v7, v2

    move v1, v0

    .line 12
    goto :goto_3

    .line 100
    :cond_5
    const/4 v0, 0x0

    aget v0, v7, v0

    new-array v4, v0, [B

    .line 33
    const/4 v2, 0x1

    .line 164
    const/4 v1, 0x0

    .line 104
    const/4 v0, 0x0

    move v3, v0

    move v11, v1

    move v1, v2

    move v2, v11

    :goto_5
    const/4 v5, 0x0

    aget v5, v7, v5

    if-ge v0, v5, :cond_7

    .line 188
    aget v0, v7, v1

    mul-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v5, v0

    .line 86
    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v4, v3

    .line 204
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 66
    const/4 v0, 0x0

    .line 104
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_5

    .line 178
    :cond_7
    :try_start_0
    const-string v0, "\u0001\"\u001d\"E0\u000e \u001e1\u00027\u0012m\u00183\u000e E\u001b^sR\u0006\u0005 \u0004\'\u000e\' &\u0012\u0010\u001b&\u0008" #java.security.spec.X509EncodedKeySpec

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 15
    const-class v3, [B

    aput-object v3, v1, v2

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 125
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    .line 206
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 167
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_6
    const/4 v3, 0x4

    if-ge v0, v3, :cond_8

    .line 69
    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v8, v1

    move v1, v0

    .line 167
    goto :goto_6

    .line 156
    :cond_8
    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v9, v0, [I

    .line 173
    const/4 v0, 0x0

    .line 39
    const/16 v2, 0x18

    .line 135
    const/4 v1, 0x0

    .line 145
    const/4 v3, 0x0

    aput v3, v9, v1

    move v3, v0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 82
    :goto_7
    array-length v4, p3

    if-ge v1, v4, :cond_b

    .line 20
    aget v1, v9, v0

    aget-byte v4, p3, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    or-int/2addr v1, v4

    aput v1, v9, v0

    .line 93
    if-nez v2, :cond_a

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 151
    const/16 v1, 0x18

    .line 70
    array-length v2, v9

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 28
    :cond_9
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_7

    .line 197
    :cond_a
    add-int/lit8 v1, v2, -0x8

    goto :goto_8

    .line 184
    :cond_b
    const/4 v0, 0x1

    move v1, v0

    .line 172
    :goto_9
    array-length v2, v9

    if-ge v0, v2, :cond_d

    .line 1
    const/16 v0, 0x20

    .line 79
    aget v4, v9, v1

    .line 127
    add-int/lit8 v2, v1, 0x1

    aget v3, v9, v2

    .line 11
    const v2, -0x3910c8e0

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 9
    :goto_a
    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_c

    .line 102
    shl-int/lit8 v0, v5, 0x4

    const/4 v10, 0x2

    aget v10, v8, v10

    add-int/2addr v0, v10

    xor-int/2addr v0, v5

    ushr-int/lit8 v10, v5, 0x5

    xor-int/2addr v10, v3

    add-int/2addr v0, v10

    const/4 v10, 0x3

    aget v10, v8, v10

    add-int/2addr v0, v10

    sub-int/2addr v4, v0

    .line 76
    shl-int/lit8 v0, v4, 0x4

    const/4 v10, 0x0

    aget v10, v8, v10

    add-int/2addr v0, v10

    xor-int/2addr v0, v4

    ushr-int/lit8 v10, v4, 0x5

    xor-int/2addr v10, v3

    add-int/2addr v0, v10

    const/4 v10, 0x1

    aget v10, v8, v10

    add-int/2addr v0, v10

    sub-int/2addr v5, v0

    .line 29
    const v0, 0x61c88647

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_a

    .line 24
    :cond_c
    aput v5, v9, v1

    .line 147
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, v1, 0x2

    aput v4, v9, v2

    move v1, v0

    .line 21
    goto :goto_9

    .line 41
    :cond_d
    const/4 v0, 0x0

    aget v0, v9, v0

    new-array v4, v0, [B

    .line 136
    const/4 v2, 0x1

    .line 191
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    move v3, v0

    move v11, v1

    move v1, v2

    move v2, v11

    :goto_b
    const/4 v5, 0x0

    aget v5, v9, v5

    if-ge v0, v5, :cond_f

    .line 17
    aget v0, v9, v1

    mul-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v5, v0

    .line 35
    add-int/lit8 v0, v2, 0x1

    aput-byte v5, v4, v3

    .line 38
    const/4 v2, 0x4

    if-ne v0, v2, :cond_e

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 89
    const/4 v0, 0x0

    .line 158
    :cond_e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_b

    .line 52
    :cond_f
    const/4 v0, 0x0

    aput-object v4, v7, v0

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    const-string v1, "kUwU/GdWtFh@x\u001aJQxr`Wu[sM" #java.security.KeyFactory

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 34
    const-string v2, "\u000c&\u001f\n\u00050\u001f\"\u0005 \u000e" #getInstance

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "kUwU/X`Zf\u001aR@s]oS" #java.lang.String

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "9\u0010*" #RSA

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    const-string v3, "fQoQsUuQQAcXhW" #generatePublic

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, ")\n5\nm\u0018&\u00086\u0019*\u001f:E0\u001b&\u0008m &\u0012\u0010\u001b&\u0008" #java.security.spec.KeySpec

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_c
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 362
    .line 446
    :try_start_0
    const-string v1, "\u0001\"\u001d\"E*\u0004m-*\u0007&\"-\u001b6\u001f\u0010\u001f1\u000e\"\u0006" #java.io.FileInputStream

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 393
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 486
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 211
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 278
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 230
    const/16 v1, 0x10

    new-array v7, v1, [B

    .line 249
    const-string v1, "sQ`P" #read

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 392
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const/4 v1, 0x0

    aget-byte v1, v7, v1

    const/16 v3, 0x53

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v7, v1

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v7, v1

    const/16 v3, 0x58

    if-eq v1, v3, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 1351
    :goto_0
    return v1

    .line 1247
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const/4 v1, 0x0

    aget-byte v1, v7, v1

    int-to-short v1, v1

    const/4 v3, 0x1

    aget-byte v3, v7, v3

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    int-to-short v1, v1

    .line 1175
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 534
    const/4 v1, 0x0

    goto :goto_0

    .line 900
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const/4 v1, 0x0

    .line 1202
    const/4 v3, 0x0

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/16 v3, 0xe

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/16 v3, 0xf

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    .line 1271
    const/16 v3, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 851
    new-instance v4, Ljava/io/File;

    const-string v8, "N0Df\u0018m\u001f3\u0000" #%s/%s.tpk

    invoke-static {v8}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 590
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x1

    invoke-static {v7}, Lcom/inca/security/lb;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 1365
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1352
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 778
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 646
    const/4 v3, 0x0

    aget-byte v3, v7, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x4

    aget-byte v4, v7, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0x8

    aget-byte v4, v7, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0xc

    aget-byte v4, v7, v4

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v9, v3, 0x40

    .line 1331
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    const/16 v10, 0x40

    if-ge v3, v10, :cond_4

    .line 635
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 768
    if-ne v4, v9, :cond_3

    .line 1502
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 756
    const/4 v3, 0x0

    const/16 v10, 0x10

    invoke-static {v7, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1331
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 930
    :cond_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v3, v1

    move-object v1, v2

    .line 694
    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v2, v4

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    const/4 v4, 0x2

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const/4 v1, 0x3

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/lit8 v1, v1, 0x0

    .line 541
    const/4 v2, 0x2

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 1396
    const/4 v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 1161
    const/4 v2, 0x0

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 779
    new-array v1, v1, [B

    .line 963
    const-string v2, "sQ`P" #read

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v4, v7

    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 786
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v4, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E\u0000\u00023\u0003&\u0019" #javax.crypto.Cipher

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 787
    const-string v7, "Sd@HZr@`ZbQ" #getInstance

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1348
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "\u00118\u0002D\u0006(\u0001D\u0013 \u00008r;\"\u000f\'\u0002-\u000c" #RSA/ECB/PKCS1Padding

    invoke-static {v11}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 928
    const-string v9, "hZh@" #init

    invoke-static {v9}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "\u0001\"\u001d\"E0\u000e \u001e1\u00027\u0012m &\u0012" #java.security.Key

    invoke-static {v12}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 527
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string v10, "PnrhZ`X" #doFinal

    invoke-static {v10}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 864
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 1404
    if-eqz v3, :cond_5

    .line 1233
    const/4 v8, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "*\u00068" #AES

    invoke-static {v13}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 673
    const-string v11, "^`B`L/WsMq@n\u001arDdW/gdWsQu\u007fdMRDdW" #javax.crypto.spec.SecretKeySpec

    invoke-static {v11}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 721
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    .line 1200
    const/4 v13, 0x1

    const/4 v14, 0x0

    const-class v15, [B

    aput-object v15, v12, v14

    .line 1361
    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    .line 518
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 810
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 1465
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v3, v12, v14

    .line 915
    const-string v3, "*\u00068" #AES

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v13

    .line 659
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 622
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v3, v11

    invoke-virtual {v10, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 523
    :cond_5
    const/4 v3, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "uDg" #AES

    invoke-static {v11}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1539
    const-string v7, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E0\u001b&\u0008m8&\u00081\u000e7 &\u0012\u0010\u001b&\u0008" #javax.crypto.spec.SecretKeySpec

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 672
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    .line 658
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v8, v11

    .line 667
    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v10

    .line 1077
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 743
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 707
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v1, v8, v11

    .line 1194
    const-string v1, "uDg" #AES

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 1139
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1382
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v9, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string v1, "\u0001\"\u001d\"E*\u0004m):\u001f&*1\u0019\"\u0012\u000c\u001e7\u001b6\u001f\u0010\u001f1\u000e\"\u0006" #java.io.ByteArrayOutputStream

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 748
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 537
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1116
    const/16 v1, 0x400

    new-array v9, v1, [B

    .line 1292
    const-string v1, "tDeUuQ" #update

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 858
    const-string v1, "\u001c1\u00027\u000e" #write

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-virtual {v7, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v1, v2

    .line 926
    :goto_3
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v1, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_8

    .line 1443
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-virtual {v10, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v12, v13

    invoke-virtual {v11, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_3

    .line 1351
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    move-object v3, v1

    move-object v1, v2

    .line 694
    goto/16 :goto_2

    .line 1193
    :cond_8
    const-string v1, "PnrhZ`X" #doFinal

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1160
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-virtual {v11, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string v1, "\u0008/\u00040\u000e" #close

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1353
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "Wm[rQ" #close

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 730
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v1, "\u001f,):\u001f&*1\u0019\"\u0012" #toByteArray

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 505
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 829
    invoke-static {v1}, Lcom/inca/security/zc;->IiiiIIIIii([B)[B

    move-result-object v1

    .line 563
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "Wm[rQ"

    .line 1180
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 605
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 564
    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1297
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 862
    :catch_0
    move-exception v1

    .line 1350
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;[B)Z #decrypt func
    .locals 24
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v6, 0x1

    .line 1283
    :try_start_0
    const-string v4, "\u0001\"\u001d\"E*\u0004m-*\u0007&\"-\u001b6\u001f\u0010\u001f1\u000e\"\u0006" #java.io.FileInputStream

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1129
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 1033
    const/4 v5, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    .line 1213
    invoke-virtual {v9, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 896
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1227
    const-string v7, "\u001b" #/

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1243
    const/4 v7, 0x0

    aput-object p1, v5, v7

    .line 581
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 834
    const/16 v4, 0x10

    new-array v11, v4, [B

    .line 726
    const/4 v4, 0x4

    new-array v12, v4, [B

    .line 1317
    const-string v4, "1\u000e\"\u000f" #read

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v5, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    invoke-virtual {v9, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 680
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const/4 v4, 0x0

    aget-byte v4, v11, v4

    const/16 v7, 0x53

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    aget-byte v4, v11, v4

    const/16 v7, 0x4f

    if-ne v4, v7, :cond_0

    const/4 v4, 0x2

    aget-byte v4, v11, v4

    const/16 v7, 0x58

    if-eq v4, v7, :cond_2

    .line 1425
    :cond_0
    const/4 v4, 0x0

    .end local p2    # "arg1":Ljava/lang/String;
    :goto_1
    return v4

    .line 557
    .restart local p2    # "arg1":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1369
    .end local p2    # "arg1":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1313
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 959
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u0006%\u000c8\u0013(" #ENOSPC

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 528
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1519
    .restart local p2    # "arg1":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const/4 v4, 0x0

    aget-byte v4, v11, v4

    int-to-short v4, v4

    const/4 v7, 0x1

    aget-byte v7, v11, v7

    int-to-short v7, v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    int-to-short v4, v4

    .line 589
    const/4 v7, 0x1

    if-eq v4, v7, :cond_3

    .line 1249
    const/4 v4, 0x0

    goto :goto_1

    .line 1291
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const/4 v4, 0x0

    .line 1236
    const/4 v7, 0x0

    aget-byte v7, v11, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    aget-byte v7, v11, v7

    if-eqz v7, :cond_8

    const/16 v7, 0xe

    aget-byte v7, v11, v7

    if-eqz v7, :cond_8

    const/16 v7, 0xf

    aget-byte v7, v11, v7

    if-eqz v7, :cond_8

    .line 823
    const/16 v7, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1220
    new-instance v8, Ljava/io/File;

    const-string v13, "\u0011r\u001b$G/@q_" #%s/%s.tpk

    invoke-static {v13}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1143
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v15

    const/4 v7, 0x1

    invoke-static {v11}, Lcom/inca/security/lb;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 519
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1294
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1229
    invoke-virtual {v13, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 1282
    const/4 v7, 0x0

    aget-byte v7, v11, v7

    shl-int/lit8 v7, v7, 0x18

    const/4 v8, 0x4

    aget-byte v8, v11, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    const/16 v8, 0x8

    aget-byte v8, v11, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    const/16 v8, 0xc

    aget-byte v8, v11, v8

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v14, v7, 0x40

    .line 1152
    const/4 v7, 0x1

    move v8, v7

    :goto_2
    const/16 v15, 0x40

    if-ge v7, v15, :cond_5

    .line 666
    invoke-virtual {v13, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 1275
    if-ne v8, v14, :cond_4

    .line 852
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 1356
    const/4 v7, 0x0

    const/16 v15, 0x10

    invoke-static {v11, v7, v4, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2

    .line 1322
    :cond_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    move-object v7, v4

    move-object v4, v5

    .line 1056
    :goto_3
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v5, v8

    const/4 v8, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v8

    const/4 v8, 0x2

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v8

    invoke-virtual {v4, v10, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const/4 v4, 0x3

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/lit8 v4, v4, 0x0

    .line 1140
    const/4 v5, 0x2

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    .line 632
    const/4 v5, 0x1

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 600
    const/4 v5, 0x0

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 979
    new-array v4, v4, [B

    .line 565
    const-string v5, "1\u000e\"\u000f" #read

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v13, [B

    aput-object v13, v8, v11

    invoke-virtual {v9, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1360
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    invoke-virtual {v5, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v8, "^`B`L/WsMq@n\u001aB]q\\dF" #javax.crypto.Cipher

    invoke-static {v8}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 889
    const-string v11, "\u000c&\u001f\n\u00050\u001f\"\u0005 \u000e" #getInstance

    invoke-static {v11}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v8, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 713
    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Sg@\u001bDwC\u001bQ\u007fBg0d`Pe]oS" #RSA/ECB/PKCS1Padding

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 718
    const-string v14, "*\u0005*\u001f" #init

    invoke-static {v14}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "^`B`\u001arQbAs]uM/\u007fdM" #java.security.Key

    invoke-static/range {v17 .. v17}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v8, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1258
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v14, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v15, "\u000f,-*\u0005\"\u0007" #doFinal

    invoke-static {v15}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, [B

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 676
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 1380
    if-eqz v7, :cond_6

    .line 921
    const/4 v13, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "uDg" #AES

    invoke-static/range {v18 .. v18}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 929
    const-string v16, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E0\u001b&\u0008m8&\u00081\u000e7 &\u0012\u0010\u001b&\u0008" #javax.crypto.spec.SecretKeySpec

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 1164
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 642
    const/16 v18, 0x1

    const/16 v19, 0x0

    const-class v20, [B

    aput-object v20, v17, v19

    .line 1130
    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    .line 549
    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 595
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 1199
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v7, v17, v19

    .line 1332
    const-string v7, "uDg" #AES

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v18

    .line 1566
    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1395
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v7, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v7, v16

    invoke-virtual {v15, v13, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 1543
    :cond_6
    const/4 v7, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "*\u00068" #AES

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    invoke-virtual {v11, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 558
    const-string v11, "^`B`L/WsMq@n\u001arDdW/gdWsQu\u007fdMRDdW" #javax.crypto.spec.SecretKeySpec

    invoke-static {v11}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 1300
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    .line 1151
    const/4 v15, 0x1

    const/16 v16, 0x0

    const-class v17, [B

    aput-object v17, v13, v16

    .line 906
    const-class v16, Ljava/lang/String;

    aput-object v16, v13, v15

    .line 1011
    invoke-virtual {v11, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 752
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 521
    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v4, v13, v16

    .line 1013
    const-string v4, "*\u00068" #AES

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v15

    .line 503
    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1079
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    const/4 v13, 0x1

    aput-object v4, v11, v13

    invoke-virtual {v14, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string v4, "^`B`\u001ah[/vx@dusF`MNAuDt@R@sQ`Y" #java.io.ByteArrayOutputStream

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 643
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v11, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 1136
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v13, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1355
    const/16 v4, 0x400

    new-array v14, v4, [B

    .line 1576
    const-string v4, "6\u001b\'\n7\u000e" #update

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, [B

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v8, v4, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 860
    const-string v4, "Cs]uQ" #write

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, [B

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    move-object v4, v5

    .line 819
    :goto_4
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v4, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_9

    .line 1055
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v15, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_4

    .line 1171
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    move-object v7, v4

    move-object v4, v5

    .line 1056
    goto/16 :goto_3

    .line 839
    :cond_9
    const-string v4, "\u000f,-*\u0005\"\u0007" #doFinal

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v8, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 794
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v8, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v4, "@nvx@dusF`M" #toByteArray

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v11, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1064
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v13, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 865
    const-string v5, "D" #/

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    .line 1113
    .end local p2    # "arg1":Ljava/lang/String;
    :goto_5
    const-string v5, "kUwU/]n\u001aG]mQNAuDt@R@sQ`Y" #java.io.FileOutputStream

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1015
    const-string v5, "\u001c1\u00027\u000e" #write

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, [B

    aput-object v15, v8, v14

    invoke-virtual {v7, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1476
    const-string v5, "Wm[rQ" #close

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v7, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1446
    const-string v5, "\r/\u001e0\u0003" #flush

    invoke-static {v5}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v7, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1018
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v5, v16

    .line 1386
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 859
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v7, v16

    .line 716
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1330
    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/inca/security/va;->iIiIIiIIIi([BI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v16

    .line 546
    const/4 v5, 0x0

    .line 1315
    :try_start_2
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v18

    .line 814
    if-eqz v18, :cond_b

    .line 594
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 682
    const-string v20, "h}h}H]h}h}" #iIiIIiiIiI

    invoke-static/range {v20 .. v20}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, [B

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 1305
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    check-cast v4, [B

    aput-object v4, v20, v21

    const/4 v4, 0x1

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v20, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v4

    .line 1583
    :goto_6
    const/4 v4, 0x3

    :try_start_4
    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/lit8 v4, v4, 0x0

    .line 733
    const/16 v16, 0x2

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v4, v4, v16

    .line 870
    const/16 v16, 0x1

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v4, v4, v16

    .line 1186
    const/16 v16, 0x0

    aget-byte v12, v12, v16

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v4

    .line 1106
    const-string v4, "\u0001\"\u001d\"E6\u001f*\u0007m\u0011*\u001bm*\'\u0007&\u0019pY" #java.util.zip.Adler32

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 525
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v17

    .line 1052
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1456
    const-string v4, "tDeUuQ" #update

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, [B

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1038
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    array-length v0, v5

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v4, "$\u000e7=\"\u00076\u000e" #getValue

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 991
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1383
    if-eqz v12, :cond_c

    .line 824
    move-wide/from16 v0, v16

    long-to-int v4, v0

    if-eq v12, v4, :cond_c

    .line 901
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v14, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 831
    .restart local p2    # "arg1":Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object p2

    goto/16 :goto_5

    .line 1293
    .end local p2    # "arg1":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 664
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1132
    :catch_2
    move-exception v4

    goto/16 :goto_6

    .line 908
    :cond_b
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BI)[B #native call
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v4

    move-object v5, v4

    .line 1525
    goto/16 :goto_6

    .line 735
    :cond_c
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v4, v12

    invoke-virtual {v8, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v15, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v14, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v4, "Wm[rQ" #close

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1547
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v4, "\u0008/\u00040\u000e" #close

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v11, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 548
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v13, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v4, "Wm[rQ" #close

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1067
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v4, v6

    .line 1375
    goto/16 :goto_1

    .line 1031
    :cond_d
    const/4 v4, 0x0

    .line 773
    goto/16 :goto_1
.end method

.method public synthetic IiiiIIIIii([B)[B
    .locals 17
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    .line 231
    :try_start_0
    const-string v1, "kUwU/]n\u001aCMuQ@FsUx}oDt@R@sQ`Y" #java.io.ByteArrayInputStream

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 387
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 216
    const/4 v2, 0x0

    const-class v3, [B

    aput-object v3, v1, v2

    .line 388
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 421
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 286
    const/16 v1, 0x10

    new-array v7, v1, [B

    .line 322
    const-string v1, "1\u000e\"\u000f" #read

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 299
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v1, 0x0

    aget-byte v1, v7, v1

    const/16 v3, 0x53

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v7, v1

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v7, v1

    const/16 v3, 0x58

    if-eq v1, v3, :cond_1

    .line 484
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 294
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/4 v1, 0x0

    aget-byte v1, v7, v1

    int-to-short v1, v1

    const/4 v3, 0x1

    aget-byte v3, v7, v3

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    int-to-short v1, v1

    .line 459
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 458
    const/4 v1, 0x0

    goto :goto_0

    .line 343
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const/4 v1, 0x0

    .line 234
    const/4 v3, 0x0

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/16 v3, 0xe

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    const/16 v3, 0xf

    aget-byte v3, v7, v3

    if-eqz v3, :cond_7

    .line 217
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    invoke-static {v7}, Lcom/inca/security/lb;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 433
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 389
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 329
    const/4 v3, 0x0

    aget-byte v3, v7, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x4

    aget-byte v4, v7, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0x8

    aget-byte v4, v7, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0xc

    aget-byte v4, v7, v4

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v9, v3, 0x40

    .line 422
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    const/16 v10, 0x40

    if-ge v3, v10, :cond_4

    .line 487
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 423
    if-ne v4, v9, :cond_3

    .line 369
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 448
    const/4 v3, 0x0

    const/16 v10, 0x10

    invoke-static {v7, v3, v1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 327
    :cond_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v3, v1

    move-object v1, v2

    .line 468
    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v2, v4

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    const/4 v4, 0x2

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v4

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v1, 0x3

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/lit8 v1, v1, 0x0

    .line 236
    const/4 v2, 0x2

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 372
    const/4 v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 341
    const/4 v2, 0x0

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 215
    new-array v1, v1, [B

    .line 436
    const-string v2, "sQ`P" #read

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v4, v7

    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 491
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v4, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E\u0000\u00023\u0003&\u0019" #javax.crypto.Cipher

    invoke-static {v4}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 348
    const-string v7, "Sd@HZr@`ZbQ" #getInstance

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 313
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "\u00118\u0002D\u0006(\u0001D\u0013 \u00008r;\"\u000f\'\u0002-\u000c" #RSA/ECB/PKCS1Padding

    invoke-static {v11}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 283
    const-string v9, "hZh@" #init

    invoke-static {v9}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "\u0001\"\u001d\"E0\u000e \u001e1\u00027\u0012m &\u0012" #java.security.Key

    invoke-static {v12}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 439
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v10, "PnrhZ`X" #doFinal

    invoke-static {v10}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 375
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 316
    if-eqz v3, :cond_5

    .line 307
    const/4 v8, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "*\u00068" #AES

    invoke-static {v13}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 210
    const-string v11, "^`B`L/WsMq@n\u001arDdW/gdWsQu\u007fdMRDdW" #javax.crypto.spec.SecretKeySpec

    invoke-static {v11}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 480
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    .line 374
    const/4 v13, 0x1

    const/4 v14, 0x0

    const-class v15, [B

    aput-object v15, v12, v14

    .line 403
    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    .line 247
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 290
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 301
    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v3, v12, v14

    .line 221
    const-string v3, "*\u00068" #AES

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v13

    .line 235
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v3, v11

    invoke-virtual {v10, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 259
    :cond_5
    const/4 v3, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "uDg" #AES

    invoke-static {v11}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 297
    const-string v7, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E0\u001b&\u0008m8&\u00081\u000e7 &\u0012\u0010\u001b&\u0008" #javax.crypto.spec.SecretKeySpec

    invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 304
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    .line 320
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v8, v11

    .line 273
    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v10

    .line 359
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 317
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 267
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v1, v8, v11

    .line 437
    const-string v1, "uDg" #AES

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v10

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 450
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v9, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "\u0001\"\u001d\"E*\u0004m):\u001f&*1\u0019\"\u0012\u000c\u001e7\u001b6\u001f\u0010\u001f1\u000e\"\u0006" #java.io.ByteArrayOutputStream

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 399
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 455
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 241
    const/16 v1, 0x400

    new-array v9, v1, [B

    .line 406
    const-string v1, "tDeUuQ" #update

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 413
    const-string v1, "\u001c1\u00027\u000e" #write

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v11, v12

    invoke-virtual {v7, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v1, v2

    .line 275
    :goto_3
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v1, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_8

    .line 367
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-virtual {v10, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v12, v13

    invoke-virtual {v11, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_3

    .line 394
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    move-object v3, v1

    move-object v1, v2

    .line 468
    goto/16 :goto_2

    .line 226
    :cond_8
    const-string v1, "PnrhZ`X" #doFinal

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 434
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-virtual {v11, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "\u0008/\u00040\u000e" #close

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 427
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "Wm[rQ" #close

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 474
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "\u001f,):\u001f&*1\u0019\"\u0012" #toByteArray

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 445
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 288
    invoke-static {v1}, Lcom/inca/security/zc;->IiiiIIIIii([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 360
    :catch_0
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public synthetic iIiIIiIIIi(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 27
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1153
    :try_start_0
    const-string v2, "^`B`\u001ah[/rhXd}oDt@R@sQ`Y" #java.io.FileInputStream

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1177
    const-string v2, "\n5\n*\u0007\"\t/\u000e" #available

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1185
    const-string v2, "sQ`P" #read

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 976
    const-string v2, "1\u000e\"\u000f" #read

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 934
    const-string v2, "fQuwiUoZdX" #getChannel

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 961
    const-string v2, "\u0008/\u00040\u000e" #close

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1174
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v2, v9

    .line 1524
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1201
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1541
    const-string v9, "\u001b" #/

    invoke-static {v9}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 1392
    const/4 v9, 0x0

    aput-object p1, v3, v9

    .line 1128
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 641
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v10, v2

    .line 952
    const/16 v2, 0x10

    new-array v12, v2, [B

    .line 826
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v12, v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v12, v2

    const/16 v3, 0x58

    if-eq v2, v3, :cond_2

    .line 1211
    :cond_0
    const/4 v2, 0x0

    .line 1219
    :goto_1
    return v2

    .line 531
    :cond_1
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/inca/security/lb;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 1118
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DzNgQw" #ENOSPC

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 796
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1053
    :cond_2
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    int-to-short v2, v2

    const/4 v3, 0x1

    aget-byte v3, v12, v3

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 1529
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1219
    const/4 v2, 0x0

    goto :goto_1

    .line 681
    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const/4 v2, 0x0

    .line 551
    const/4 v3, 0x0

    aget-byte v3, v12, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    aget-byte v3, v12, v3

    if-eqz v3, :cond_8

    const/16 v3, 0xe

    aget-byte v3, v12, v3

    if-eqz v3, :cond_8

    const/16 v3, 0xf

    aget-byte v3, v12, v3

    if-eqz v3, :cond_8

    .line 1100
    const/16 v3, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1105
    new-instance v4, Ljava/io/File;

    const-string v13, "N0Df\u0018m\u001f3\u0000" #%s/%s.tpk

    invoke-static {v13}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 649
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v15

    const/4 v3, 0x1

    invoke-static {v12}, Lcom/inca/security/lb;->IiiiIIIIii([B)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    .line 822
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1394
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1506
    invoke-virtual {v13, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 644
    const/4 v3, 0x0

    aget-byte v3, v12, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x4

    aget-byte v4, v12, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0x8

    aget-byte v4, v12, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0xc

    aget-byte v4, v12, v4

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v14, v3, 0x40

    .line 1454
    const/4 v3, 0x1

    move v4, v3

    :goto_2
    const/16 v15, 0x40

    if-ge v3, v15, :cond_5

    .line 699
    invoke-virtual {v13, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 1472
    if-ne v4, v14, :cond_4

    .line 1206
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 886
    const/4 v3, 0x0

    const/16 v15, 0x10

    invoke-static {v12, v3, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 783
    :cond_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    move-object v3, v2

    move-object v2, v6

    .line 992
    :goto_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v4, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    invoke-virtual {v2, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const/4 v2, 0x3

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/lit8 v2, v2, 0x0

    .line 827
    const/4 v4, 0x2

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 907
    const/4 v4, 0x1

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 1405
    const/4 v4, 0x0

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 1435
    new-array v4, v2, [B

    .line 1214
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v2, v12

    invoke-virtual {v5, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string v2, "^`B`L/WsMq@n\u001aB]q\\dF" #javax.crypto.Cipher

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1043
    const-string v2, "\u000c&\u001f\n\u00050\u001f\"\u0005 \u000e" #getInstance

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v5, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 1097
    const-string v2, "hZh@" #init

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "\u0001\"\u001d\"E0\u000e \u001e1\u00027\u0012m &\u0012" #java.security.Key

    invoke-static {v15}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1287
    const-string v2, "PnrhZ`X" #doFinal

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, [B

    aput-object v16, v14, v15

    invoke-virtual {v5, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 903
    const-string v2, "6\u001b\'\n7\u000e" #update

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, [B

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v5, v2, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1280
    const-string v2, "PnrhZ`X" #doFinal

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1251
    const/4 v2, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "\u00118\u0002D\u0006(\u0001D\u0013 \u00008r;\"\u000f\'\u0002-\u000c" #RSA/ECB/PKCS1Padding

    invoke-static/range {v18 .. v18}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1111
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/lb;->IiiIiiiIiI:Ljava/lang/Object;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 628
    if-eqz v3, :cond_6

    .line 973
    const/4 v4, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "uDg" #AES

    invoke-static/range {v18 .. v18}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1096
    const-string v16, "\u0001\"\u001d\"\u0013m\u00081\u00123\u001f,E0\u001b&\u0008m8&\u00081\u000e7 &\u0012\u0010\u001b&\u0008" #javax.crypto.spec.SecretKeySpec

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 1376
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    .line 1429
    const/16 v18, 0x1

    const/16 v19, 0x0

    const-class v20, [B

    aput-object v20, v17, v19

    .line 1339
    const-class v19, Ljava/lang/String;

    aput-object v19, v17, v18

    .line 1389
    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 620
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 1285
    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v3, v17, v19

    .line 1245
    const-string v3, "uDg" #AES

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    .line 1169
    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1257
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v3, v16

    invoke-virtual {v14, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    .line 607
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v16, "*\u00068" #AES

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v14

    invoke-virtual {v12, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 554
    const-string v3, "^`B`L/WsMq@n\u001arDdW/gdWsQu\u007fdMRDdW" #javax.crypto.spec.SecretKeySpec

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1455
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 650
    const/4 v14, 0x1

    const/16 v16, 0x0

    const-class v17, [B

    aput-object v17, v4, v16

    .line 596
    const-class v16, Ljava/lang/String;

    aput-object v16, v4, v14

    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 634
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1060
    const/4 v14, 0x1

    const/16 v16, 0x0

    aput-object v2, v4, v16

    .line 1337
    const-string v2, "*\u00068" #AES

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v14

    .line 1528
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1017
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v13, v12, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const-string v2, "^`B`\u001ah[/vx@dusF`MNAuDt@R@sQ`Y" #java.io.ByteArrayOutputStream

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1514
    const-string v2, "\u001c1\u00027\u000e" #write

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, [B

    aput-object v14, v4, v13

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1537
    const-string v2, "Wm[rQ" #close

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 1240
    const-string v2, "\u001f,):\u001f&*1\u0019\"\u0012" #toByteArray

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 1570
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1470
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 652
    const/4 v3, 0x0

    .line 529
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 1445
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v2, v4

    const/4 v4, 0x1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v4

    const/4 v4, 0x2

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v4

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_4
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v2, v0, :cond_9

    .line 997
    aget-byte v2, v18, v3

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    mul-int/lit8 v20, v3, 0x8

    add-int/lit8 v2, v3, 0x1

    shl-int v3, v19, v20

    or-int/2addr v3, v4

    move v4, v3

    move v3, v2

    .line 849
    goto :goto_4

    .line 1114
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    move-object v3, v2

    move-object v2, v6

    .line 992
    goto/16 :goto_3

    .line 1444
    :cond_9
    new-array v3, v4, [B

    .line 540
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v3, v2, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v18

    const/16 v18, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v2, v18

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1212
    const-string v2, "^`B`\u001ao]n\u001ab\\`ZoQmG/rhXdwiUoZdX" #java.nio.channels.FileChannel

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 1279
    const-string v2, "3\u00040\u00027\u0002,\u0005" #position

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 555
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v10, v10, v18

    .line 937
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/4 v3, 0x1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v3

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v18, v3

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v5, v12, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1378
    const-string v2, "kUwU/]n\u001aCMuQ@FsUx}oDt@R@sQ`Y" #java.io.ByteArrayInputStream

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 967
    const-string v2, "\n5\n*\u0007\"\t/\u000e" #available

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 813
    const-string v2, "sQ`P" #read

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [B

    aput-object v13, v5, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v5, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v5, v12

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 719
    const-string v2, "\u0008/\u00040\u000e" #close

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1431
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v15, [B

    aput-object v15, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 980
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v15, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1398
    const-string v2, "kUwU/]n\u001aG]mQNAuDt@R@sQ`Y" #java.io.FileOutputStream

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 692
    const-string v2, "\u001c1\u00027\u000e" #write

    invoke-static {v2}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/16 v18, 0x0

    const-class v19, [B

    aput-object v19, v4, v18

    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1448
    const-string v2, "Wm[rQ" #close

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 924
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v2, v19

    .line 1041
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1545
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object p2, v5, v19

    .line 847
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 885
    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    const/4 v5, 0x5

    .line 1126
    invoke-static {v2, v5}, Lcom/inca/security/va;->iIiIIiIIIi([BI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v20

    .line 1107
    const/4 v5, 0x0

    .line 927
    :try_start_2
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getReserved1()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 1298
    if-eqz v2, :cond_a

    .line 802
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    .line 1372
    const-string v23, "*\"*\"\n\u0002*\"*\"" #iIiIIiiIiI

    invoke-static/range {v23 .. v23}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, [B

    aput-object v26, v24, v25

    const/16 v25, 0x1

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 1549
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    check-cast v3, [B

    check-cast v3, [B

    aput-object v3, v23, v24

    const/4 v3, 0x1

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v23, v3

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 789
    :goto_5
    const/4 v3, 0x1

    :try_start_4
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1391
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v10

    .line 1289
    invoke-static {v2, v3}, Lcom/inca/security/ib;->IiiiIIIIii(J)Ljava/util/List;

    move-result-object v2

    .line 760
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/ac;

    .line 1406
    invoke-virtual {v2}, Lcom/inca/security/ac;->IiiiIIIIii()J

    move-result-wide v10

    long-to-int v7, v10

    new-array v7, v7, [B

    .line 1569
    invoke-virtual {v2}, Lcom/inca/security/ac;->IiIiiIiiII()J

    move-result-wide v10

    sget v15, Lcom/inca/security/ac;->IiIiIIIiIi:I

    int-to-long v0, v15

    move-wide/from16 v20, v0

    cmp-long v10, v10, v20

    if-nez v10, :cond_b

    .line 1582
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/inca/security/ac;->IiiiIIIIii()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-virtual {v12, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 1419
    :goto_7
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v3

    .line 1459
    goto :goto_6

    .line 985
    :catch_1
    move-exception v2

    .line 1204
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 1082
    goto :goto_5

    .line 1559
    :cond_a
    check-cast v3, [B

    check-cast v3, [B

    move-wide/from16 v0, v20

    long-to-int v2, v0

    invoke-static {v3, v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BI)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto :goto_5

    .line 948
    :catch_2
    move-exception v2

    move-object v2, v5

    goto/16 :goto_5

    .line 637
    :cond_b
    const/4 v10, 0x3

    :try_start_6
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/inca/security/ac;->IiiiIIIIii()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 1419
    goto :goto_7

    .line 1426
    :cond_c
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v13, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1058
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1
.end method
