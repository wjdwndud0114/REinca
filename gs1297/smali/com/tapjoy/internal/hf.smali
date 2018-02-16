.class public final Lcom/tapjoy/internal/hf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/tapjoy/internal/he;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/hf;->a:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/hf;->d:I

    return-void
.end method

.method private a(I)[I
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 322
    mul-int/lit8 v0, p1, 0x3

    .line 323
    const/4 v1, 0x0

    .line 324
    new-array v5, v0, [B

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 331
    const/16 v0, 0x100

    new-array v0, v0, [I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    move v3, v2

    .line 334
    :goto_0
    if-ge v3, p1, :cond_0

    .line 335
    add-int/lit8 v4, v1, 0x1

    :try_start_1
    aget-byte v1, v5, v1

    and-int/lit16 v6, v1, 0xff

    .line 336
    add-int/lit8 v7, v4, 0x1

    aget-byte v1, v5, v4

    and-int/lit16 v8, v1, 0xff

    .line 337
    add-int/lit8 v1, v7, 0x1

    aget-byte v4, v5, v7

    and-int/lit16 v7, v4, 0xff

    .line 338
    add-int/lit8 v4, v3, 0x1

    const/high16 v9, -0x1000000

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v9

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    or-int/2addr v6, v7

    aput v6, v0, v3
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 339
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 341
    :goto_1
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 342
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iput v10, v1, Lcom/tapjoy/internal/he;->b:I

    .line 345
    :cond_0
    return-object v0

    .line 340
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    move v4, v2

    .line 123
    :cond_0
    :goto_0
    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->c:I

    const v3, 0x7fffffff

    if-gt v0, v3, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v0

    .line 125
    sparse-switch v0, :sswitch_data_0

    .line 182
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iput v1, v0, Lcom/tapjoy/internal/he;->b:I

    goto :goto_0

    .line 133
    :sswitch_0
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    new-instance v3, Lcom/tapjoy/internal/hd;

    invoke-direct {v3}, Lcom/tapjoy/internal/hd;-><init>()V

    iput-object v3, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 1416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1220
    iput v3, v0, Lcom/tapjoy/internal/hd;->a:I

    .line 1221
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 2416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1221
    iput v3, v0, Lcom/tapjoy/internal/hd;->b:I

    .line 1222
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 3416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1222
    iput v3, v0, Lcom/tapjoy/internal/hd;->c:I

    .line 1223
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 4416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1223
    iput v3, v0, Lcom/tapjoy/internal/hd;->d:I

    .line 1225
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v3

    .line 1227
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    .line 1228
    :goto_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-int/lit8 v5, v3, 0x7

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    .line 1232
    iget-object v6, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v6, v6, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, v6, Lcom/tapjoy/internal/hd;->e:Z

    .line 1233
    if-eqz v0, :cond_4

    .line 1235
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    invoke-direct {p0, v5}, Lcom/tapjoy/internal/hf;->a(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/internal/hd;->k:[I

    .line 1242
    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, v0, Lcom/tapjoy/internal/hd;->j:I

    .line 5353
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    .line 5355
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->e()V

    .line 1247
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v3, v0, Lcom/tapjoy/internal/he;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/tapjoy/internal/he;->c:I

    .line 1253
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1227
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1232
    goto :goto_2

    .line 1238
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/tapjoy/internal/hd;->k:[I

    goto :goto_3

    .line 140
    :sswitch_1
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v0

    .line 141
    sparse-switch v0, :sswitch_data_1

    .line 172
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->e()V

    goto/16 :goto_0

    .line 145
    :sswitch_2
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    new-instance v3, Lcom/tapjoy/internal/hd;

    invoke-direct {v3}, Lcom/tapjoy/internal/hd;-><init>()V

    iput-object v3, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    .line 6192
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    .line 6194
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v0

    .line 6196
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    and-int/lit8 v5, v0, 0x1c

    shr-int/lit8 v5, v5, 0x2

    iput v5, v3, Lcom/tapjoy/internal/hd;->g:I

    .line 6197
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    iget v3, v3, Lcom/tapjoy/internal/hd;->g:I

    if-nez v3, :cond_5

    .line 6199
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    iput v1, v3, Lcom/tapjoy/internal/hd;->g:I

    .line 6201
    :cond_5
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, v3, Lcom/tapjoy/internal/hd;->f:Z

    .line 6416
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 6205
    const/4 v3, 0x2

    if-ge v0, v3, :cond_6

    .line 6206
    const/16 v0, 0xa

    .line 6208
    :cond_6
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v3, Lcom/tapjoy/internal/hd;->i:I

    .line 6210
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/hd;

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v3

    iput v3, v0, Lcom/tapjoy/internal/hd;->h:I

    .line 6212
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 6201
    goto :goto_4

    .line 150
    :sswitch_3
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->f()I

    .line 151
    const-string v0, ""

    move-object v3, v0

    move v0, v2

    .line 152
    :goto_5
    const/16 v5, 0xb

    if-ge v0, v5, :cond_8

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/internal/hf;->a:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 155
    :cond_8
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->c()V

    goto/16 :goto_0

    .line 159
    :cond_9
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->e()V

    goto/16 :goto_0

    .line 164
    :sswitch_4
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->e()V

    goto/16 :goto_0

    .line 168
    :sswitch_5
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->e()V

    goto/16 :goto_0

    :sswitch_6
    move v4, v1

    .line 178
    goto/16 :goto_0

    .line 185
    :cond_a
    return-void

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 141
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->f()I

    .line 262
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 264
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 265
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 266
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/he;->m:I

    .line 267
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->m:I

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tapjoy/internal/he;->m:I

    .line 271
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/hf;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :cond_2
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 280
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iput v0, v1, Lcom/tapjoy/internal/he;->b:I

    .line 292
    :cond_1
    :goto_1
    return-void

    .line 7299
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    .line 7416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 7299
    iput v3, v2, Lcom/tapjoy/internal/he;->f:I

    .line 7300
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    .line 8416
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 7300
    iput v3, v2, Lcom/tapjoy/internal/he;->g:I

    .line 7302
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v2

    .line 7304
    iget-object v3, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_3

    :goto_2
    iput-boolean v0, v3, Lcom/tapjoy/internal/he;->h:Z

    .line 7308
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    const/4 v1, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v1, v2

    iput v1, v0, Lcom/tapjoy/internal/he;->i:I

    .line 7310
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/he;->j:I

    .line 7312
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/he;->k:I

    .line 288
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-boolean v0, v0, Lcom/tapjoy/internal/he;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v1, v1, Lcom/tapjoy/internal/he;->i:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/hf;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/he;->a:[I

    .line 290
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget-object v1, v1, Lcom/tapjoy/internal/he;->a:[I

    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v2, v2, Lcom/tapjoy/internal/he;->j:I

    aget v1, v1, v2

    iput v1, v0, Lcom/tapjoy/internal/he;->l:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 7304
    goto :goto_2
.end method

.method private e()V
    .locals 3

    .prologue
    .line 365
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    if-gtz v0, :cond_0

    .line 370
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 378
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->g()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/hf;->d:I

    .line 380
    iget v0, p0, Lcom/tapjoy/internal/hf;->d:I

    if-lez v0, :cond_1

    move v3, v1

    move v0, v1

    .line 383
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/tapjoy/internal/hf;->d:I

    if-ge v0, v2, :cond_0

    .line 384
    iget v2, p0, Lcom/tapjoy/internal/hf;->d:I

    sub-int v3, v2, v0

    .line 385
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/tapjoy/internal/hf;->a:[B

    invoke-virtual {v2, v4, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    add-int/2addr v0, v3

    goto :goto_0

    .line 389
    :catch_0
    move-exception v2

    .line 390
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    iget v3, p0, Lcom/tapjoy/internal/hf;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v2, v4, v1

    .line 392
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iput v6, v1, Lcom/tapjoy/internal/he;->b:I

    .line 395
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g()I
    .locals 3

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 408
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tapjoy/internal/he;->b:I

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/he;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    .line 95
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->d()V

    .line 88
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1114
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->b()V

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->c:I

    if-gez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/he;->b:I

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    goto :goto_0
.end method

.method public final a([B)Lcom/tapjoy/internal/hf;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1073
    iput-object v1, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v1, p0, Lcom/tapjoy/internal/hf;->a:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1075
    new-instance v1, Lcom/tapjoy/internal/he;

    invoke-direct {v1}, Lcom/tapjoy/internal/he;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    .line 1076
    iput v2, p0, Lcom/tapjoy/internal/hf;->d:I

    .line 1051
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    .line 1052
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1053
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    :goto_0
    return-object p0

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/tapjoy/internal/hf;->b:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/he;

    const/4 v1, 0x2

    iput v1, v0, Lcom/tapjoy/internal/he;->b:I

    goto :goto_0
.end method
