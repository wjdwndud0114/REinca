.class public Lcom/inca/security/rc;
.super Ljava/lang/Object;
.source "cc"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/lc;
    }
.end annotation


# static fields
.field private static synthetic IIiIiIIIii:Lcom/inca/security/rc;


# instance fields
.field private synthetic IIIIiiIiII:Z

.field private synthetic IIIiiiiIII:[Lcom/inca/security/nb;

.field private synthetic IIiIIIIIii:I

.field private synthetic IiIiIIIiIi:[B

.field private synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:[Lcom/inca/security/nb;

.field private synthetic IiiiiIiiIi:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/inca/security/lc;->IIiIiIIIii:Lcom/inca/security/lc;

    invoke-virtual {v0}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v0

    new-array v0, v0, [Lcom/inca/security/nb;

    iput-object v0, p0, Lcom/inca/security/rc;->IIIiiiiIII:[Lcom/inca/security/nb;

    .line 117
    sget-object v0, Lcom/inca/security/lc;->IIiIiIIIii:Lcom/inca/security/lc;

    invoke-virtual {v0}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v0

    new-array v0, v0, [Lcom/inca/security/nb;

    iput-object v0, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    .line 22
    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    .line 105
    iput v2, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    .line 120
    iput v2, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    .line 195
    iput-boolean v2, p0, Lcom/inca/security/rc;->IIIIiiIiII:Z

    .line 146
    iput-object v0, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    .line 166
    sget-object v0, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v0}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/inca/security/lc;->IIiIiIIIii:Lcom/inca/security/lc;

    invoke-virtual {v2}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/inca/security/rc;->IIIiiiiIII:[Lcom/inca/security/nb;

    new-instance v2, Lcom/inca/security/nb;

    invoke-direct {v2}, Lcom/inca/security/nb;-><init>()V

    aput-object v2, v0, v1

    .line 168
    iget-object v2, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    new-instance v3, Lcom/inca/security/nb;

    invoke-direct {v3}, Lcom/inca/security/nb;-><init>()V

    add-int/lit8 v0, v1, 0x1

    aput-object v3, v2, v1

    move v1, v0

    .line 166
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static IiiiIIIIii()Lcom/inca/security/rc;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    if-nez v0, :cond_0

    .line 115
    const-class v1, Lcom/inca/security/rc;

    monitor-enter v1

    .line 141
    :try_start_0
    new-instance v0, Lcom/inca/security/rc;

    invoke-direct {v0}, Lcom/inca/security/rc;-><init>()V

    sput-object v0, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    sget-object v0, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 201
    sget-object v2, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v2

    move-object v0, p0

    .line 63
    .end local p0    # "this":Lcom/inca/security/rc;
    .local v0, "this":Lcom/inca/security/rc;
    :goto_0
    :try_start_0
    iget-byte v3, v0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 197
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move-object v0, p0

    goto :goto_0

    .line 143
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    iget-byte v4, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    if-eq v3, v4, :cond_2

    .line 200
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    sget-object v4, Lcom/inca/security/lc;->IiiIiiiIiI:Lcom/inca/security/lc;

    invoke-virtual {v4}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 184
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "5K\u0013V\u0015WP|\u0016\u0013;V\tg\tC\u0015\u001d5]\u0014C\u001fZ\u001eG?U;V\tg\tC\u0015"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-byte v3, v1, v3

    iput-byte v3, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/inca/security/rc;->IIIiiiiIII:[Lcom/inca/security/nb;

    iget-byte v4, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v3

    iget v4, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    if-eq v3, v4, :cond_3

    .line 76
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "w\u0011^\u0011T\u0015WPc\u0011P\u001bV\u0004\tPz\u001eE\u0011_\u0019WP`\u0015B\u0015F\u001eP\u0015"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    .line 147
    const/4 v4, 0x4

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget v1, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    .line 14
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public IiiiIIIIii()V
    .locals 3

    .prologue
    .line 100
    sget-object v1, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-byte v0, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 164
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    .line 104
    iput v2, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    .line 188
    iput v0, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    .line 204
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IiiiIIIIii(Lcom/inca/security/lc;[B)Z
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/lc;
    .param p2, "arg1"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    sget-object v2, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v2

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/inca/security/rc;->IIIiiiiIII:[Lcom/inca/security/nb;

    invoke-virtual {p1}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Lcom/inca/security/nb;->IiiiIIIIii(I[B)V

    .line 152
    iget-object v3, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    invoke-virtual {p1}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/inca/security/nb;->IiiiIIIIii(I[B)V

    .line 174
    sget-object v3, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    if-ne p1, v3, :cond_0

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v5}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    .line 130
    iput v4, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    .line 32
    iput v3, p0, Lcom/inca/security/rc;->IiIiIiiIii:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :try_start_1
    monitor-exit v2

    .line 199
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public IiiiIIIIii([B)[B
    .locals 7
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    .line 189
    sget-object v2, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v2

    move-object v0, p0

    .line 92
    .end local p0    # "this":Lcom/inca/security/rc;
    .local v0, "this":Lcom/inca/security/rc;
    :goto_0
    :try_start_0
    iget-byte v1, v0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 6
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move-object v0, p0

    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    iget-byte v3, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    if-eq v1, v3, :cond_2

    .line 108
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    sget-object v3, Lcom/inca/security/lc;->IiiIiiiIiI:Lcom/inca/security/lc;

    invoke-virtual {v3}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 125
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "5K\u0013V\u0015WP|\u0016\u0013;V\tg\tC\u0015\u001d5]\u0014C\u001fZ\u001eG?U;V\tg\tC\u0015"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/inca/security/rc;->IIIiiiiIII:[Lcom/inca/security/nb;

    iget-byte v3, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v1

    .line 167
    invoke-static {v1}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v3

    iget v4, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    if-eq v3, v4, :cond_3

    .line 69
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "w\u0011^\u0011T\u0015WPc\u0011P\u001bV\u0004\tPz\u001eE\u0011_\u0019WP`\u0015B\u0015F\u001eP\u0015"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_3
    array-length v3, v1

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    .line 109
    const/4 v4, 0x4

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget v1, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/rc;->IIiIIIIIii:I

    .line 47
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public iIiIIiIIIi(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 149
    sget-object v2, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v2

    move-object v0, p0

    .line 186
    .end local p0    # "this":Lcom/inca/security/rc;
    .local v0, "this":Lcom/inca/security/rc;
    :goto_0
    :try_start_0
    iget-byte v3, v0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 118
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move-object v0, p0

    goto :goto_0

    .line 382
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 265
    const/4 v4, 0x0

    iget v5, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    invoke-static {v3, v4, v5}, Lcom/inca/security/va;->iIiIIiIIIi([BII)V

    .line 368
    const/4 v4, 0x0

    const/4 v5, 0x4

    array-length v6, v1

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v1, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    iget-byte v4, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v3

    .line 252
    iget-boolean v1, p0, Lcom/inca/security/rc;->IIIIiiIiII:Z

    if-eqz v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    if-nez v1, :cond_3

    .line 361
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 231
    if-nez v1, :cond_1

    .line 387
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "%]\u0019B\u0019V3_\u0019V\u001eG9wPZ\u0003\u0013\u001eF\u001c_\\\u0013\t\\\u0005\u0013\u001dF\u0003GPP\u0011_\u001c\u00131C\u0000t\u0005R\u0002W3_\u0019]\u0004\u001d\u0003V\u0004f\u001eZ\u0001F\u0015p\u001cZ\u0015]\u0004z4\u001bY"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 388
    :cond_1
    :try_start_1
    array-length v4, v1

    const/16 v5, 0x28

    if-le v4, v5, :cond_2

    .line 421
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "9]\u0006R\u001cZ\u0014\u0013\u0016\\\u0002^\u0011GP\tPf\u001eZ\u0001Z\u0015p\u001cZ\u0015]\u0004z4"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_2
    iget-object v4, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    sget-object v5, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v5}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    .line 232
    :cond_3
    array-length v1, v3

    add-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    .line 310
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-byte v6, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aput-byte v6, v1, v5

    .line 335
    iget-object v5, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 277
    iget-object v4, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v7, v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    move-object v1, v2

    .line 281
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-static {v3, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :cond_4
    :try_start_2
    array-length v1, v3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x0

    .line 253
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-byte v7, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aput-byte v7, v1, v6

    .line 457
    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 477
    const/4 v5, 0x2

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    move-object v1, v2

    .line 281
    goto :goto_1
.end method

.method public iIiIIiIIIi()V
    .locals 2

    .prologue
    .line 261
    sget-object v1, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v1

    .line 407
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/inca/security/rc;->IIIIiiIiII:Z

    .line 328
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iIiIIiIIIi([B)[B
    .locals 8
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .line 142
    sget-object v2, Lcom/inca/security/rc;->IIiIiIIIii:Lcom/inca/security/rc;

    monitor-enter v2

    move-object v0, p0

    .line 91
    .end local p0    # "this":Lcom/inca/security/rc;
    .local v0, "this":Lcom/inca/security/rc;
    :goto_0
    :try_start_0
    iget-byte v1, v0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 73
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    move-object v0, p0

    goto :goto_0

    .line 4
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 3
    const/4 v3, 0x0

    iget v4, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/inca/security/rc;->IiIiIiiIii:I

    invoke-static {v1, v3, v4}, Lcom/inca/security/va;->iIiIIiIIIi([BII)V

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x4

    array-length v5, p1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v3, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    iget-byte v4, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v3

    .line 34
    iget-boolean v1, p0, Lcom/inca/security/rc;->IIIIiiIiII:Z

    if-eqz v1, :cond_4

    .line 2
    iget-object v1, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    if-nez v1, :cond_3

    .line 42
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 187
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "%]\u0019B\u0019V3_\u0019V\u001eG9wPZ\u0003\u0013\u001eF\u001c_\\\u0013\t\\\u0005\u0013\u001dF\u0003GPP\u0011_\u001c\u00131C\u0000t\u0005R\u0002W3_\u0019]\u0004\u001d\u0003V\u0004f\u001eZ\u0001F\u0015p\u001cZ\u0015]\u0004z4\u001bY"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 18
    :cond_1
    :try_start_1
    array-length v4, v1

    const/16 v5, 0x28

    if-le v4, v5, :cond_2

    .line 150
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "9]\u0006R\u001cZ\u0014\u0013\u0016\\\u0002^\u0011GP\tPf\u001eZ\u0001Z\u0015p\u001cZ\u0015]\u0004z4"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_2
    iget-object v4, p0, Lcom/inca/security/rc;->IiiIiiiIiI:[Lcom/inca/security/nb;

    sget-object v5, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v5}, Lcom/inca/security/lc;->IiiiIIIIii()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/inca/security/nb;->IiiiIIIIii([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    .line 121
    :cond_3
    array-length v1, v3

    add-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    .line 37
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-byte v6, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aput-byte v6, v1, v5

    .line 111
    iget-object v5, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 36
    iget-object v4, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v7, v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inca/security/rc;->IiIiIIIiIi:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    move-object v1, v2

    .line 57
    :goto_1
    monitor-exit v1

    return-object v3

    .line 177
    :cond_4
    array-length v1, v3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x0

    .line 140
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-byte v7, p0, Lcom/inca/security/rc;->IiiiiIiiIi:B

    aput-byte v7, v1, v6

    .line 137
    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 23
    const/4 v5, 0x2

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    move-object v1, v2

    .line 57
    goto :goto_1
.end method
