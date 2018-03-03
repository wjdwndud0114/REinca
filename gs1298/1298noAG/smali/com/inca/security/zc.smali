.class public final Lcom/inca/security/zc;
.super Ljava/lang/Object;
.source "jc"


# static fields
.field private static final synthetic IIIIiiIiII:I = 0x6

.field public static final synthetic IIIiiiiIII:I = 0x5

.field private static final synthetic IIiIIIIIii:I = 0x9

.field public static final synthetic IIiIiIIIii:I = 0x0

.field private static final synthetic IIiiIiIIii:I = 0x4

.field private static final synthetic IiIiIIIiIi:I = 0x4

.field private static final synthetic IiIiIiiIii:I = 0x1

.field public static final synthetic IiiIiiiIiI:I = 0x0

.field public static final synthetic IiiiiIiiIi:I = 0x1

.field private static final synthetic iiIIIIIiiI:I = 0x1000

.field private static final synthetic iiIIIiiiiI:I = 0x10

.field public static final synthetic iiIiIIIiiI:I = 0x0

.field private static final synthetic iiiiIIIiii:I = 0x2


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic IiiiIIIIii([B)I
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 96
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii([B)J
    .locals 2
    .param p0, "arg0"    # [B

    .prologue
    .line 97
    invoke-static {p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v0

    .line 180
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii([BII)J
    .locals 8
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 239
    const-wide/16 v2, 0x0

    .line 394
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 338
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v0, v1, 0x1

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    move v1, v0

    .line 394
    goto :goto_0

    .line 308
    :cond_0
    return-wide v2
.end method

.method public static synthetic IiiiIIIIii([BIJI)V
    .locals 6
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 468
    add-int v2, p1, v1

    mul-int/lit8 v0, v1, 0x8

    ushr-long v4, p2, v0

    long-to-int v0, v4

    int-to-byte v3, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p0, v2

    move v1, v0

    .line 321
    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method private static synthetic IiiiIIIIii([BIZII)V
    .locals 6
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Z
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    .line 141
    const/4 v0, 0x5

    aget-byte v3, p0, v2

    shl-int/lit8 v4, p1, 0x2

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 48
    aget-byte v3, p0, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 205
    aget-byte v3, p0, v2

    or-int/lit8 v3, v3, 0x0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 153
    int-to-long v2, p4

    invoke-static {p0, v1, v2, v3, v5}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    .line 160
    int-to-long v2, p3

    invoke-static {p0, v0, v2, v3, v5}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    .line 40
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii([B)[B
    .locals 24
    .param p0, "arg0"    # [B

    .prologue
    .line 372
    invoke-static/range {p0 .. p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)J

    move-result-wide v2

    long-to-int v12, v2

    .line 341
    invoke-static/range {p0 .. p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)I

    move-result v6

    .line 345
    const/4 v7, 0x0

    .line 215
    const-wide/16 v2, 0x1

    .line 337
    new-array v8, v12, [B

    .line 305
    const/16 v4, 0x1000

    new-array v13, v4, [I

    .line 452
    const/16 v4, 0x1000

    new-array v14, v4, [B

    .line 436
    add-int/lit8 v4, v12, -0x6

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v15, v4, -0x1

    .line 491
    const/4 v9, -0x1

    .line 466
    const/4 v4, 0x0

    .line 295
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v16, v5, 0x3

    .line 348
    const/4 v5, 0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    move/from16 v0, v16

    if-eq v0, v5, :cond_0

    .line 313
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "~+B+\u0014<Q8G#[$\u0014%Z&MjG?D:[8@9\u0014&Q<Q&\u0014{\u0014+Z.\u0014y"

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    if-eq v5, v10, :cond_2

    .line 246
    new-array v8, v12, [B

    .line 283
    invoke-static/range {p0 .. p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    :cond_1
    return-object v8

    :cond_2
    move-wide v10, v2

    move/from16 v20, v4

    move-wide v4, v2

    move/from16 v2, v20

    .line 461
    :goto_0
    const-wide/16 v18, 0x1

    cmp-long v3, v10, v18

    if-nez v3, :cond_13

    .line 316
    add-int/lit8 v3, v6, 0x4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v4

    .line 270
    if-gt v7, v15, :cond_4

    .line 298
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 307
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v10

    long-to-int v2, v10

    move-wide v10, v4

    move/from16 v20, v2

    move-wide/from16 v21, v4

    move/from16 v5, v20

    move v4, v3

    move-wide/from16 v2, v21

    .line 480
    :goto_1
    const-wide/16 v18, 0x1

    and-long v10, v10, v18

    const-wide/16 v18, 0x1

    cmp-long v6, v10, v18

    if-nez v6, :cond_e

    .line 301
    const/4 v6, 0x1

    ushr-long v10, v2, v6

    .line 235
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    .line 401
    ushr-int/lit8 v2, v5, 0x4

    and-int/lit16 v2, v2, 0xfff

    .line 482
    aget v2, v13, v2

    .line 319
    and-int/lit8 v3, v5, 0xf

    if-eqz v3, :cond_5

    .line 272
    and-int/lit8 v3, v5, 0xf

    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v4, v3, 0x2

    move v3, v2

    move-object v2, v8

    .line 367
    :goto_2
    add-int/lit8 v6, v7, 0x0

    add-int/lit8 v17, v3, 0x0

    aget-byte v17, v8, v17

    aput-byte v17, v2, v6

    const/4 v2, 0x3

    .line 282
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v17, v3, 0x1

    aget-byte v17, v8, v17

    aput-byte v17, v8, v6

    .line 385
    add-int/lit8 v6, v7, 0x2

    add-int/lit8 v17, v3, 0x2

    aget-byte v17, v8, v17

    aput-byte v17, v8, v6

    move v6, v2

    .line 325
    :goto_3
    if-ge v2, v4, :cond_b

    .line 226
    add-int v17, v7, v6

    add-int v2, v3, v6

    aget-byte v18, v8, v2

    add-int/lit8 v2, v6, 0x1

    aput-byte v18, v8, v17

    move v6, v2

    .line 325
    goto :goto_3

    .line 410
    :cond_3
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v10

    long-to-int v2, v10

    :cond_4
    :goto_4
    move-wide v10, v4

    move/from16 v20, v2

    move-wide/from16 v21, v4

    move/from16 v5, v20

    move v4, v3

    move-wide/from16 v2, v21

    .line 480
    goto :goto_1

    .line 244
    :cond_5
    add-int/lit8 v3, v4, 0x2

    aget-byte v3, p0, v3

    add-int/lit8 v5, v4, 0x3

    and-int/lit16 v4, v3, 0xff

    move v3, v2

    move-object v2, v8

    .line 222
    goto :goto_2

    .line 489
    :cond_6
    and-int/lit8 v2, v5, 0x3

    if-nez v2, :cond_7

    .line 304
    and-int/lit16 v2, v5, 0xff

    ushr-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 320
    const/4 v3, 0x3

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 406
    :goto_5
    sub-int/2addr v2, v3

    move v3, v2

    move-object v2, v8

    .line 367
    goto :goto_2

    .line 317
    :cond_7
    and-int/lit8 v2, v5, 0x2

    if-nez v2, :cond_8

    .line 437
    const v2, 0xffff

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 268
    const/4 v3, 0x3

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 255
    goto :goto_5

    .line 441
    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-nez v2, :cond_9

    .line 450
    const v2, 0xffff

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x6

    .line 262
    ushr-int/lit8 v3, v5, 0x2

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x3

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 266
    goto :goto_5

    .line 353
    :cond_9
    and-int/lit8 v2, v5, 0x7f

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 399
    ushr-int/lit8 v2, v5, 0x7

    const v3, 0x1ffff

    and-int/2addr v2, v3

    .line 455
    ushr-int/lit8 v3, v5, 0x2

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v3, v3, 0x2

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 256
    goto :goto_5

    .line 488
    :cond_a
    ushr-int/lit8 v2, v5, 0xf

    .line 330
    ushr-int/lit8 v3, v5, 0x7

    and-int/lit16 v3, v3, 0xff

    .line 454
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x3

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v7

    .line 406
    goto :goto_5

    .line 432
    :cond_b
    add-int v3, v7, v4

    .line 383
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 355
    add-int/lit8 v2, v9, 0x1

    const/4 v6, 0x3

    invoke-static {v8, v2, v6}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v6

    long-to-int v2, v6

    move v6, v9

    .line 427
    :goto_6
    sub-int v7, v3, v4

    if-ge v9, v7, :cond_c

    .line 311
    ushr-int/lit8 v7, v2, 0xc

    .line 324
    add-int/lit8 v9, v6, 0x1

    xor-int v6, v7, v2

    and-int/lit16 v6, v6, 0xfff

    .line 293
    aput v9, v13, v6

    .line 349
    const/4 v7, 0x1

    aput-byte v7, v14, v6

    .line 474
    ushr-int/lit8 v2, v2, 0x8

    const v6, 0xffff

    and-int/2addr v2, v6

    add-int/lit8 v6, v9, 0x3

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    move v6, v9

    goto :goto_6

    .line 323
    :cond_c
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v5, v2}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v6

    long-to-int v2, v6

    move v4, v2

    move v2, v3

    .line 405
    :goto_7
    add-int/lit8 v9, v2, -0x1

    move v2, v4

    move v7, v3

    move v6, v5

    move-wide v4, v10

    .line 288
    goto/16 :goto_0

    .line 473
    :cond_d
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v5, v2}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v6

    long-to-int v2, v6

    move v4, v2

    move v2, v3

    .line 405
    goto :goto_7

    .line 332
    :cond_e
    if-gt v7, v15, :cond_11

    .line 340
    aget-byte v6, p0, v4

    .line 443
    add-int/lit8 v10, v7, 0x1

    aput-byte v6, v8, v7

    .line 424
    add-int/lit8 v4, v4, 0x1

    .line 478
    const/4 v6, 0x1

    ushr-long v6, v2, v6

    .line 472
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_10

    move v2, v9

    .line 274
    :goto_8
    add-int/lit8 v3, v10, -0x3

    if-ge v2, v3, :cond_f

    .line 446
    add-int/lit8 v2, v9, 0x1

    const/4 v3, 0x3

    invoke-static {v8, v2, v3}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .line 393
    ushr-int/lit8 v9, v3, 0xc

    xor-int/2addr v3, v9

    and-int/lit16 v3, v3, 0xfff

    .line 486
    aput v2, v13, v3

    .line 211
    const/4 v9, 0x1

    aput-byte v9, v14, v3

    move v9, v2

    .line 278
    goto :goto_8

    .line 237
    :cond_f
    shr-int/lit8 v2, v5, 0x8

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    move-wide/from16 v20, v6

    move-wide/from16 v22, v6

    move v7, v10

    move v6, v4

    move-wide/from16 v4, v22

    move-wide/from16 v10, v20

    goto/16 :goto_0

    .line 381
    :cond_10
    shr-int/lit8 v2, v5, 0x8

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move-wide/from16 v20, v6

    move-wide/from16 v22, v6

    move v7, v10

    move v6, v4

    move-wide/from16 v4, v22

    move-wide/from16 v10, v20

    goto/16 :goto_0

    :cond_11
    move v5, v7

    .line 303
    :goto_9
    add-int/lit8 v6, v12, -0x1

    if-gt v7, v6, :cond_1

    .line 416
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_12

    .line 425
    const-wide v2, 0x80000000L

    .line 453
    add-int/lit8 v4, v4, 0x4

    .line 465
    :cond_12
    aget-byte v6, p0, v4

    .line 464
    add-int/lit8 v7, v5, 0x1

    aput-byte v6, v8, v5

    .line 292
    add-int/lit8 v4, v4, 0x1

    .line 312
    const/4 v5, 0x1

    ushr-long/2addr v2, v5

    move v5, v7

    goto :goto_9

    :cond_13
    move v3, v6

    goto/16 :goto_4
.end method

.method public static synthetic IiiiIIIIii([BI)[B
    .locals 27
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I

    .prologue
    .line 175
    const/4 v6, 0x0

    .line 152
    const/16 v5, 0xd

    .line 119
    const-wide v8, 0x80000000L

    .line 174
    const/16 v12, 0x9

    .line 155
    move-object/from16 v0, p0

    array-length v3, v0

    add-int/lit16 v3, v3, 0x190

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 32
    const/16 v3, 0x1000

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 190
    const/16 v3, 0x1000

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 139
    const/4 v7, 0x0

    .line 199
    move-object/from16 v0, p0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x6

    add-int/lit8 v3, v3, -0x4

    add-int/lit8 v20, v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 50
    const/4 v3, 0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    .line 126
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "~+B+\u0014<Q8G#[$\u0014%Z&MjG?D:[8@9\u0014&Q<Q&\u0014{\u0014+Z.\u0014y"

    invoke-static {v4}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 85
    const/16 v3, 0x1000

    const/4 v10, 0x1

    filled-new-array {v3, v10}, [I

    move-result-object v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v2, p0

    .line 104
    .end local p0    # "arg0":[B
    .local v2, "arg0":[B
    :goto_0
    array-length v10, v2

    if-nez v10, :cond_2

    .line 188
    const/4 v3, 0x0

    new-array v3, v3, [B

    .line 376
    :goto_1
    return-object v3

    .line 33
    .end local v2    # "arg0":[B
    .restart local p0    # "arg0":[B
    :cond_1
    const/16 v3, 0x1000

    const/16 v10, 0x10

    filled-new-array {v3, v10}, [I

    move-result-object v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v2, p0

    .line 104
    .end local p0    # "arg0":[B
    .restart local v2    # "arg0":[B
    goto :goto_0

    .line 204
    :cond_2
    move/from16 v0, v20

    if-gt v6, v0, :cond_1c

    .line 66
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v10

    long-to-int v7, v10

    move/from16 v16, v4

    move v10, v7

    move v4, v12

    move-wide/from16 v25, v8

    move v9, v6

    move-wide/from16 v6, v25

    .line 5
    :goto_2
    move/from16 v0, v20

    if-gt v9, v0, :cond_16

    .line 170
    const-wide/16 v12, 0x1

    and-long/2addr v12, v6

    const-wide/16 v14, 0x1

    cmp-long v8, v12, v14

    if-nez v8, :cond_1b

    .line 189
    move-object/from16 v0, p0

    array-length v8, v0

    shr-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x3

    if-le v9, v8, :cond_3

    shr-int/lit8 v8, v9, 0x5

    sub-int v8, v9, v8

    if-le v5, v8, :cond_3

    .line 6
    move-object/from16 v0, p0

    array-length v3, v0

    add-int/lit8 v3, v3, 0x9

    new-array v3, v3, [B

    .line 178
    const/4 v4, 0x0

    move-object/from16 v0, p0

    array-length v5, v0

    move-object/from16 v0, p0

    array-length v6, v0

    add-int/lit8 v6, v6, 0x9

    move/from16 v0, p1

    invoke-static {v3, v0, v4, v5, v6}, Lcom/inca/security/zc;->IiiiIIIIii([BIZII)V

    .line 68
    const/4 v4, 0x0

    const/16 v5, 0x9

    move-object/from16 v0, p0

    array-length v6, v0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 194
    :cond_3
    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    const-wide v12, 0x80000000L

    or-long/2addr v6, v12

    const/4 v8, 0x4

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6, v7, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    .line 13
    const-wide v6, 0x80000000L

    .line 103
    add-int/lit8 v4, v5, 0x4

    move v12, v5

    move-wide v14, v6

    move v13, v4

    .line 167
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 192
    ushr-int/lit8 v4, v10, 0xc

    xor-int/2addr v4, v10

    and-int/lit16 v6, v4, 0xfff

    .line 60
    aget-object v4, v3, v6

    const/4 v5, 0x0

    aget v7, v4, v5

    .line 54
    aget v4, v18, v6

    xor-int/2addr v4, v10

    .line 10
    aput v10, v18, v6

    .line 156
    aget-object v5, v3, v6

    const/4 v8, 0x0

    aput v9, v5, v8

    .line 173
    if-nez v4, :cond_9

    aget-byte v4, v19, v6

    if-eqz v4, :cond_9

    sub-int v4, v9, v7

    const/4 v5, 0x2

    if-gt v4, v5, :cond_4

    add-int/lit8 v4, v7, 0x1

    if-ne v9, v4, :cond_9

    const/4 v4, 0x3

    move/from16 v0, v16

    if-lt v0, v4, :cond_9

    const/4 v4, 0x3

    if-le v9, v4, :cond_9

    aget-byte v4, p0, v9

    add-int/lit8 v5, v9, -0x3

    aget-byte v5, p0, v5

    if-ne v4, v5, :cond_9

    aget-byte v4, p0, v9

    add-int/lit8 v5, v9, -0x2

    aget-byte v5, p0, v5

    if-ne v4, v5, :cond_9

    aget-byte v4, p0, v9

    add-int/lit8 v5, v9, -0x1

    aget-byte v5, p0, v5

    if-ne v4, v5, :cond_9

    aget-byte v4, p0, v9

    add-int/lit8 v5, v9, 0x1

    aget-byte v5, p0, v5

    if-ne v4, v5, :cond_9

    aget-byte v4, p0, v9

    add-int/lit8 v5, v9, 0x2

    aget-byte v5, p0, v5

    if-ne v4, v5, :cond_9

    .line 135
    :cond_4
    const/4 v4, 0x1

    ushr-long v4, v14, v4

    const-wide v10, 0x80000000L

    or-long/2addr v10, v4

    .line 145
    add-int/lit8 v4, v7, 0x3

    aget-byte v4, p0, v4

    add-int/lit8 v5, v9, 0x3

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_5

    .line 20
    shl-int/lit8 v4, v6, 0x4

    or-int/lit8 v4, v4, 0x1

    .line 93
    add-int/lit8 v5, v13, 0x0

    ushr-int/lit8 v6, v4, 0x0

    int-to-byte v6, v6

    aput-byte v6, v17, v5

    .line 151
    add-int/lit8 v6, v13, 0x1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 198
    add-int/lit8 v5, v9, 0x3

    aput-byte v4, v17, v6

    .line 70
    add-int/lit8 v4, v13, 0x2

    .line 4
    :goto_4
    const/4 v6, 0x0

    .line 3
    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v8

    long-to-int v7, v8

    move/from16 v16, v6

    move v9, v5

    move v5, v4

    move v4, v12

    move-wide/from16 v25, v10

    move v10, v7

    move-wide/from16 v6, v25

    goto/16 :goto_2

    .line 28
    :cond_5
    move-object/from16 v0, p0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0xff

    if-le v4, v5, :cond_6

    const/16 v4, 0xff

    .line 200
    :goto_5
    add-int/lit8 v5, v9, 0x4

    add-int v8, v7, v5

    sub-int/2addr v8, v9

    aget-byte v8, p0, v8

    aget-byte v14, p0, v5

    if-ne v8, v14, :cond_7

    .line 1
    add-int/lit8 v5, v5, 0x1

    add-int v8, v7, v5

    sub-int/2addr v8, v9

    aget-byte v8, p0, v8

    aget-byte v14, p0, v5

    if-ne v8, v14, :cond_7

    .line 11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    :goto_6
    sub-int v8, v5, v9

    add-int/2addr v8, v7

    aget-byte v8, v2, v8

    aget-byte v14, p0, v5

    if-ne v8, v14, :cond_7

    sub-int v8, v5, v9

    if-ge v8, v4, :cond_7

    .line 102
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    goto :goto_6

    .line 28
    :cond_6
    move-object/from16 v0, p0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 24
    :cond_7
    sub-int v4, v5, v9

    .line 21
    shl-int/lit8 v6, v6, 0x4

    .line 83
    const/16 v7, 0x12

    if-ge v4, v7, :cond_8

    .line 41
    add-int/lit8 v4, v4, -0x2

    or-int/2addr v4, v6

    .line 191
    add-int/lit8 v6, v13, 0x0

    ushr-int/lit8 v7, v4, 0x0

    int-to-byte v7, v7

    aput-byte v7, v17, v6

    .line 158
    add-int/lit8 v6, v13, 0x1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v7, v4

    .line 17
    add-int/lit8 v4, v13, 0x2

    aput-byte v7, v17, v6

    goto :goto_4

    .line 142
    :cond_8
    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v6, v4

    .line 73
    add-int/lit8 v4, v13, 0x3

    int-to-long v6, v6

    const/4 v8, 0x3

    move-object/from16 v0, v17

    invoke-static {v0, v13, v6, v7, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    goto/16 :goto_4

    .line 27
    :cond_9
    add-int/lit8 v4, v16, 0x1

    .line 34
    const/4 v5, 0x1

    aput-byte v5, v19, v6

    .line 2
    aget-byte v5, p0, v9

    aput-byte v5, v17, v13

    .line 80
    add-int/lit8 v6, v9, 0x1

    .line 42
    const/4 v5, 0x1

    ushr-long v8, v14, v5

    .line 187
    add-int/lit8 v5, v13, 0x1

    .line 71
    ushr-int/lit8 v7, v10, 0x8

    const v10, 0xffff

    and-int/2addr v7, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    move/from16 v16, v4

    move v10, v7

    move v4, v12

    move-wide/from16 v25, v8

    move v9, v6

    move-wide/from16 v6, v25

    .line 150
    goto/16 :goto_2

    .line 51
    :cond_a
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v9, v4}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v4

    long-to-int v10, v4

    .line 111
    move-object/from16 v0, p0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0xff

    if-le v4, v5, :cond_c

    const/16 v4, 0xff

    .line 77
    :goto_7
    ushr-int/lit8 v5, v10, 0xc

    xor-int/2addr v5, v10

    and-int/lit16 v0, v5, 0xfff

    move/from16 v21, v0

    .line 129
    aget-byte v22, v19, v21

    .line 95
    const/4 v6, 0x0

    .line 122
    const/4 v7, 0x0

    .line 177
    const/4 v5, 0x0

    move v11, v5

    :goto_8
    const/16 v8, 0x10

    if-ge v5, v8, :cond_f

    move/from16 v0, v22

    if-gt v0, v11, :cond_b

    if-gez v22, :cond_f

    .line 137
    :cond_b
    aget-object v5, v3, v21

    aget v8, v5, v11

    .line 196
    int-to-byte v5, v10

    aget-byte v23, p0, v8

    move/from16 v0, v23

    if-ne v5, v0, :cond_1a

    ushr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    add-int/lit8 v23, v8, 0x1

    aget-byte v23, p0, v23

    move/from16 v0, v23

    if-ne v5, v0, :cond_1a

    ushr-int/lit8 v5, v10, 0x10

    int-to-byte v5, v5

    add-int/lit8 v23, v8, 0x2

    aget-byte v23, p0, v23

    move/from16 v0, v23

    if-ne v5, v0, :cond_1a

    add-int/lit8 v5, v9, -0x2

    if-ge v8, v5, :cond_1a

    .line 88
    const/4 v5, 0x3

    move-object/from16 v2, p0

    .line 57
    :goto_9
    add-int v23, v8, v5

    aget-byte v23, v2, v23

    add-int v24, v9, v5

    aget-byte v24, p0, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    if-ge v5, v4, :cond_d

    .line 75
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    goto :goto_9

    .line 111
    :cond_c
    move-object/from16 v0, p0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 90
    :cond_d
    if-gt v5, v6, :cond_e

    if-ne v5, v6, :cond_1a

    if-le v8, v7, :cond_1a

    :cond_e
    move v6, v8

    .line 177
    :goto_a
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move/from16 v25, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v25

    goto :goto_8

    .line 203
    :cond_f
    aget-object v4, v3, v21

    and-int/lit8 v5, v22, 0xf

    aput v9, v4, v5

    .line 149
    add-int/lit8 v4, v22, 0x1

    int-to-byte v4, v4

    .line 186
    aput-byte v4, v19, v21

    .line 62
    const/4 v4, 0x3

    if-lt v6, v4, :cond_15

    sub-int v4, v9, v7

    const v5, 0x1ffff

    if-ge v4, v5, :cond_15

    .line 382
    sub-int v8, v9, v7

    .line 265
    const/4 v4, 0x1

    move v5, v4

    move v7, v10

    :goto_b
    if-ge v4, v6, :cond_10

    .line 228
    add-int v4, v9, v5

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4, v7}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v10

    long-to-int v7, v10

    .line 248
    ushr-int/lit8 v4, v7, 0xc

    xor-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xfff

    .line 378
    aget-byte v10, v19, v4

    add-int/lit8 v11, v10, 0x1

    int-to-byte v11, v11

    aput-byte v11, v19, v4

    .line 252
    aget-object v11, v3, v4

    and-int/lit8 v10, v10, 0xf

    add-int v21, v9, v5

    add-int/lit8 v4, v5, 0x1

    aput v21, v11, v10

    move v5, v4

    .line 265
    goto :goto_b

    .line 231
    :cond_10
    add-int/2addr v9, v6

    .line 387
    const/4 v4, 0x1

    ushr-long v4, v14, v4

    const-wide v10, 0x80000000L

    or-long/2addr v4, v10

    .line 388
    const/4 v10, 0x3

    if-ne v6, v10, :cond_11

    const/16 v10, 0x3f

    if-gt v8, v10, :cond_11

    .line 460
    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v13, 0x1

    int-to-long v10, v8

    const/4 v8, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10, v11, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    move v10, v7

    move-wide/from16 v25, v4

    move v4, v12

    move v5, v6

    move-wide/from16 v6, v25

    .line 391
    goto/16 :goto_2

    .line 286
    :cond_11
    const/4 v10, 0x3

    if-ne v6, v10, :cond_12

    const/16 v10, 0x3fff

    if-gt v8, v10, :cond_12

    .line 232
    shl-int/lit8 v6, v8, 0x2

    or-int/lit8 v8, v6, 0x1

    add-int/lit8 v6, v13, 0x2

    int-to-long v10, v8

    const/4 v8, 0x2

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10, v11, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    move v10, v7

    move-wide/from16 v25, v4

    move v4, v12

    move v5, v6

    move-wide/from16 v6, v25

    .line 310
    goto/16 :goto_2

    .line 342
    :cond_12
    const/16 v10, 0x12

    if-gt v6, v10, :cond_13

    const/16 v10, 0x3ff

    if-gt v8, v10, :cond_13

    .line 357
    add-int/lit8 v6, v6, -0x3

    shl-int/lit8 v6, v6, 0x2

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    or-int/lit8 v8, v6, 0x2

    add-int/lit8 v6, v13, 0x2

    int-to-long v10, v8

    const/4 v8, 0x2

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10, v11, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    move v10, v7

    move-wide/from16 v25, v4

    move v4, v12

    move v5, v6

    move-wide/from16 v6, v25

    .line 485
    goto/16 :goto_2

    .line 404
    :cond_13
    const/16 v10, 0x21

    if-gt v6, v10, :cond_14

    .line 457
    add-int/lit8 v6, v6, -0x2

    shl-int/lit8 v6, v6, 0x2

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v6, v8

    or-int/lit8 v8, v6, 0x3

    add-int/lit8 v6, v13, 0x3

    int-to-long v10, v8

    const/4 v8, 0x3

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10, v11, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    move v10, v7

    move-wide/from16 v25, v4

    move v4, v12

    move v5, v6

    move-wide/from16 v6, v25

    .line 260
    goto/16 :goto_2

    .line 447
    :cond_14
    add-int/lit8 v6, v6, -0x3

    shl-int/lit8 v6, v6, 0x7

    shl-int/lit8 v8, v8, 0xf

    or-int/2addr v6, v8

    or-int/lit8 v8, v6, 0x3

    .line 467
    add-int/lit8 v6, v13, 0x4

    int-to-long v10, v8

    const/4 v8, 0x4

    move-object/from16 v0, v17

    invoke-static {v0, v13, v10, v11, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    move v10, v7

    move-wide/from16 v25, v4

    move v4, v12

    move v5, v6

    move-wide/from16 v6, v25

    .line 384
    goto/16 :goto_2

    .line 407
    :cond_15
    aget-byte v4, p0, v9

    aput-byte v4, v17, v13

    .line 352
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    ushr-long v6, v14, v4

    .line 322
    add-int/lit8 v5, v13, 0x1

    move v4, v12

    .line 264
    goto/16 :goto_2

    :cond_16
    move v3, v9

    .line 294
    :goto_c
    move-object/from16 v0, p0

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    if-gt v3, v8, :cond_18

    .line 459
    const-wide/16 v10, 0x1

    and-long/2addr v10, v6

    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_17

    .line 390
    const/4 v3, 0x1

    ushr-long/2addr v6, v3

    const-wide v10, 0x80000000L

    or-long/2addr v6, v10

    .line 285
    add-int/lit8 v3, v5, 0x4

    const/4 v8, 0x4

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6, v7, v8}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    .line 242
    const-wide v6, 0x80000000L

    move v4, v5

    move v5, v3

    .line 386
    :cond_17
    aget-byte v8, p0, v9

    .line 339
    add-int/lit8 v3, v9, 0x1

    aput-byte v8, v17, v5

    .line 318
    add-int/lit8 v5, v5, 0x1

    .line 344
    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    move v9, v3

    goto :goto_c

    :cond_18
    move-wide v8, v6

    .line 336
    :goto_d
    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    const-wide/16 v10, 0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_19

    .line 365
    const/4 v3, 0x1

    ushr-long v6, v8, v3

    move-wide v8, v6

    goto :goto_d

    .line 371
    :cond_19
    const/4 v3, 0x1

    ushr-long v6, v8, v3

    const-wide v8, 0x80000000L

    or-long/2addr v6, v8

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6, v7, v3}, Lcom/inca/security/zc;->IiiiIIIIii([BIJI)V

    .line 234
    const/4 v3, 0x1

    move-object/from16 v0, p0

    array-length v4, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v3, v4, v5}, Lcom/inca/security/zc;->IiiiIIIIii([BIZII)V

    .line 414
    new-array v3, v5, [B

    .line 409
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_1a
    move v5, v6

    move v6, v7

    goto/16 :goto_a

    :cond_1b
    move v12, v4

    move-wide v14, v6

    move v13, v5

    goto/16 :goto_3

    :cond_1c
    move/from16 v16, v4

    move v10, v7

    move v4, v12

    move-wide/from16 v25, v8

    move v9, v6

    move-wide/from16 v6, v25

    goto/16 :goto_2
.end method

.method public static synthetic IiiiIIIIii([BII)[B
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 287
    array-length v0, p0

    if-ne v0, p2, :cond_0

    .line 408
    invoke-static {p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)[B

    move-result-object v0

    .line 900
    :goto_0
    return-object v0

    .line 1175
    :cond_0
    new-array v0, p2, [B

    .line 534
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 900
    invoke-static {v0}, Lcom/inca/security/zc;->IiiiIIIIii([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii([BIII)[B
    .locals 2
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    .line 481
    if-nez p2, :cond_0

    .line 254
    array-length v0, p0

    if-ne v0, p3, :cond_0

    .line 218
    invoke-static {p0, p1}, Lcom/inca/security/zc;->IiiiIIIIii([BI)[B

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 369
    :cond_0
    new-array v0, p3, [B

    .line 448
    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    invoke-static {v0, p1}, Lcom/inca/security/zc;->IiiiIIIIii([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic iIiIIiIIIi([B)J
    .locals 3
    .param p0, "arg0"    # [B

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-static {p0}, Lcom/inca/security/zc;->IiiiIIIIii([B)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 65
    :cond_0
    invoke-static {p0, v2, v2}, Lcom/inca/security/zc;->IiiiIIIIii([BII)J

    move-result-wide v0

    goto :goto_0
.end method
