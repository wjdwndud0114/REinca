.class public final Lcom/tapjoy/internal/fk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)J
    .locals 7

    .prologue
    const/16 v5, 0x80

    .line 173
    aget-byte v3, p0, p1

    .line 174
    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, v0

    .line 175
    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    .line 176
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    .line 179
    and-int/lit16 v4, v3, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v3, v3, 0x7f

    add-int/lit16 v3, v3, 0x80

    .line 180
    :cond_0
    and-int/lit16 v4, v2, 0x80

    if-ne v4, v5, :cond_1

    and-int/lit8 v2, v2, 0x7f

    add-int/lit16 v2, v2, 0x80

    .line 181
    :cond_1
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v5, :cond_2

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x80

    .line 182
    :cond_2
    and-int/lit16 v4, v0, 0x80

    if-ne v4, v5, :cond_3

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v0, v0, 0x80

    .line 184
    :cond_3
    int-to-long v4, v3

    const/16 v3, 0x18

    shl-long/2addr v4, v3

    int-to-long v2, v2

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v2, v4

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static b([BI)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 192
    invoke-static {p0, p1}, Lcom/tapjoy/internal/fk;->a([BI)J

    move-result-wide v0

    .line 193
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/tapjoy/internal/fk;->a([BI)J

    move-result-wide v2

    .line 194
    const-wide v4, 0x83aa7e80L

    sub-long/2addr v0, v4

    mul-long/2addr v0, v6

    mul-long/2addr v2, v6

    const-wide v4, 0x100000000L

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Z
    .locals 19

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 81
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 83
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 84
    const/16 v4, 0x30

    new-array v4, v4, [B

    .line 85
    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x30

    const/16 v7, 0x7b

    invoke-direct {v5, v4, v6, v3, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 90
    const/4 v3, 0x0

    const/16 v6, 0x1b

    aput-byte v6, v4, v3

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1202
    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    .line 1203
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    sub-long v12, v6, v12

    .line 1204
    const-wide v14, 0x83aa7e80L

    add-long/2addr v10, v14

    .line 1207
    const/16 v3, 0x28

    const/16 v14, 0x18

    shr-long v14, v10, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v3

    .line 1208
    const/16 v3, 0x29

    const/16 v14, 0x10

    shr-long v14, v10, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v3

    .line 1209
    const/16 v3, 0x2a

    const/16 v14, 0x8

    shr-long v14, v10, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v3

    .line 1210
    const/16 v3, 0x2b

    const/4 v14, 0x0

    shr-long/2addr v10, v14

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    .line 1212
    const-wide v10, 0x100000000L

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 1214
    const/16 v3, 0x2c

    const/16 v12, 0x18

    shr-long v12, v10, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 1215
    const/16 v3, 0x2d

    const/16 v12, 0x10

    shr-long v12, v10, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 1216
    const/16 v3, 0x2e

    const/16 v12, 0x8

    shr-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    .line 1218
    const/16 v3, 0x2f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v3

    .line 97
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 100
    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v5, 0x30

    invoke-direct {v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 101
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 103
    sub-long v12, v10, v8

    add-long/2addr v6, v12

    .line 106
    const/16 v3, 0x18

    invoke-static {v4, v3}, Lcom/tapjoy/internal/fk;->b([BI)J

    move-result-wide v12

    .line 107
    const/16 v3, 0x20

    invoke-static {v4, v3}, Lcom/tapjoy/internal/fk;->b([BI)J

    move-result-wide v14

    .line 108
    const/16 v3, 0x28

    invoke-static {v4, v3}, Lcom/tapjoy/internal/fk;->b([BI)J

    move-result-wide v4

    .line 109
    sub-long v8, v10, v8

    sub-long v16, v4, v14

    sub-long v8, v8, v16

    .line 118
    sub-long v12, v14, v12

    sub-long/2addr v4, v6

    add-long/2addr v4, v12

    const-wide/16 v12, 0x2

    div-long/2addr v4, v12

    .line 124
    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/tapjoy/internal/fk;->a:J

    .line 125
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/tapjoy/internal/fk;->b:J

    .line 126
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/tapjoy/internal/fk;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 137
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 132
    :catch_0
    move-exception v2

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v2

    .line 132
    :catchall_1
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method
