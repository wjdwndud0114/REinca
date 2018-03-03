.class public Lcom/inca/security/nc;
.super Ljava/lang/Thread;
.source "mc"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Core/AppGuardEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = null
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:I

.field private synthetic IIIiiiiIII:Z

.field private final synthetic IIiIiIIIii:I

.field private final synthetic IiIiIIIiIi:I

.field private synthetic IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

.field private final synthetic IiiIiiiIiI:I

.field public final synthetic IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;


# direct methods
.method public constructor <init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/Core/AppGuardEngine;I)V
    .locals 5
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p2, "arg1"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p3, "arg2"    # I

    .prologue
    .line 360
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x2bf20

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 323
    iput-boolean v4, p0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    .line 356
    iput v3, p0, Lcom/inca/security/nc;->IIIIiiIiII:I

    .line 473
    iput v2, p0, Lcom/inca/security/nc;->IiiIiiiIiI:I

    .line 445
    iput v1, p0, Lcom/inca/security/nc;->IiIiIIIiIi:I

    .line 405
    iput v0, p0, Lcom/inca/security/nc;->IIiIiIIIii:I

    .line 220
    iput-object p2, p0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    .line 347
    invoke-virtual {p0, p3}, Lcom/inca/security/nc;->IiiiIIIIii(I)V

    .line 340
    return-void
.end method

.method private synthetic IiiiIIIIii([B)Ljava/util/Map;
    .locals 8
    .param p1, "arg0"    # [B

    .prologue
    const/4 v0, 0x0

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    .line 430
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 419
    array-length v4, v2

    invoke-static {p1, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    array-length v4, v2

    array-length v5, v3

    invoke-static {p1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    invoke-static {v3}, Lcom/inca/security/va;->iIiIIiIIIi([B)J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 373
    new-instance v3, Ljava/util/zip/Adler32;

    invoke-direct {v3}, Ljava/util/zip/Adler32;-><init>()V

    .line 416
    invoke-virtual {v3, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 240
    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v6

    .line 425
    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 380
    :cond_0
    const-string v3, "\u001d\"\u0007*\u000f"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v0, "eUuU"

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-object v1
.end method

.method private synthetic IiiiIIIIii([B)[B
    .locals 5
    .param p1, "arg0"    # [B

    .prologue
    const/4 v4, 0x0

    .line 462
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 309
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 280
    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    .line 249
    invoke-virtual {v2, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 392
    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 408
    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1247
    return-object v0
.end method


# virtual methods
.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    .line 446
    invoke-virtual {p0}, Lcom/inca/security/nc;->interrupt()V

    .line 393
    return-void
.end method

.method public IiiiIIIIii(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 478
    if-ltz p1, :cond_0

    .line 362
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/inca/security/nc;->IIIIiiIiII:I

    .line 426
    :cond_0
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 900
    .line 744
    const/16 v3, 0x1000

    new-array v8, v3, [B

    .line 1309
    const-string v5, ""

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1518
    .end local p0    # "this":Lcom/inca/security/nc;
    .local v2, "this":Lcom/inca/security/nc;
    :cond_0
    :goto_0
    return-void

    .end local v2    # "this":Lcom/inca/security/nc;
    .restart local p0    # "this":Lcom/inca/security/nc;
    :cond_1
    move-object/from16 v2, p0

    .line 1274
    .end local p0    # "this":Lcom/inca/security/nc;
    .restart local v2    # "this":Lcom/inca/security/nc;
    :goto_1
    iget-object v3, v2, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1065
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v2, p0

    .line 1271
    goto :goto_1

    .line 1365
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_0

    move-object/from16 v2, p0

    .line 514
    :goto_2
    iget-object v3, v2, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiIiiIiiII()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1364
    const-wide/16 v6, 0xbb8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v2, p0

    .line 646
    goto :goto_2

    .line 1166
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_0

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 756
    new-instance v9, Ljava/net/CookieManager;

    const/4 v3, 0x0

    sget-object v4, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-direct {v9, v3, v4}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 598
    new-instance v3, Lcom/inca/security/ka;

    invoke-direct {v3}, Lcom/inca/security/ka;-><init>()V

    .line 965
    invoke-virtual {v3, v9}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/net/CookieManager;)Lcom/inca/security/ka;

    move-result-object v3

    const/16 v4, 0x2710

    .line 1159
    invoke-virtual {v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;

    move-result-object v3

    const/4 v4, 0x1

    .line 553
    invoke-virtual {v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Z)Lcom/inca/security/ka;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 930
    invoke-static {v4}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii([B)Lcom/inca/security/ka;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    .line 1512
    invoke-virtual {v7}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "D\'\u0004\u0002\u001e7\u0003"

    invoke-static {v6}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v12

    .line 1384
    const/4 v4, 0x0

    .line 881
    const/4 v3, 0x0

    .line 953
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v6}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    move/from16 v18, v3

    move v3, v4

    move-object v4, v5

    move/from16 v5, v18

    :goto_3
    move-object/from16 v2, p0

    move v6, v3

    .line 1482
    :goto_4
    :try_start_2
    iget-object v3, v2, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v3, :cond_5

    :cond_4
    monitor-exit v7

    goto/16 :goto_0

    .line 557
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 803
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/nc;->IIIIiiIiII:I

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/nc;->IIIIiiIiII:I

    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v3, v14, v16

    if-lez v3, :cond_6

    .line 724
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_d

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 541
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 925
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    move-object v3, v7

    .line 557
    :goto_5
    monitor-exit v3

    goto/16 :goto_0

    .line 875
    :cond_6
    const-string v3, "hZEUuU"

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v4}, Lcom/inca/security/ka;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inca/security/ka;->IiiiIIIIii()Lcom/inca/security/xa;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 1349
    :try_start_4
    invoke-virtual {v3}, Lcom/inca/security/xa;->IiiiIIIIii()Ljava/util/Map;

    move-result-object v4

    .line 1076
    sget-object v13, Lcom/inca/security/wa;->IiIiIiiIii:Lcom/inca/security/wa;

    invoke-virtual {v3}, Lcom/inca/security/xa;->IiiiIIIIii()Lcom/inca/security/wa;

    move-result-object v3

    if-ne v13, v3, :cond_8

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v3, :cond_7

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v13, 0x2

    const/16 v14, 0x16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const-string v17, "(\u0006=\u0006%\u00174\u00108\u000f4\u000e\"\u0017&\u001c*\u0017?\u0002(\u0008C"

    invoke-static/range {v17 .. v17}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    move-object/from16 v16, v0

    .line 1478
    invoke-virtual/range {v16 .. v16}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u001d"

    invoke-static/range {v16 .. v16}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 873
    invoke-virtual {v3, v13, v14, v15}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 1562
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v13, 0x0

    const/16 v14, 0x14

    const/4 v15, 0x3

    .line 928
    invoke-static {v15}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v15

    .line 1562
    invoke-virtual {v3, v13, v14, v15}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1518
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_9

    if-nez v4, :cond_e

    :cond_9
    monitor-exit v7

    goto/16 :goto_0

    .line 1555
    :catch_0
    move-exception v3

    .line 951
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/nc;->IIIIiiIiII:I

    if-eqz v3, :cond_c

    .line 1157
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_a

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v6, 0x14

    const/4 v13, 0x2

    .line 864
    invoke-static {v13}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v13

    .line 1464
    invoke-virtual {v3, v4, v6, v13}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1434
    :cond_a
    :try_start_6
    const-string v6, ""

    .line 1233
    const/4 v4, 0x0

    .line 932
    invoke-virtual {v9}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v3

    invoke-interface {v3}, Ljava/net/CookieStore;->removeAll()Z

    .line 511
    mul-int/lit16 v3, v5, 0x3e8

    add-int/lit16 v3, v3, 0x1388

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 653
    add-int/lit8 v3, v5, 0x1

    mul-int/lit16 v3, v3, 0x7d0

    add-int/lit16 v3, v3, 0x2710

    const/16 v13, 0x7530

    if-le v3, v13, :cond_b

    const/16 v3, 0x7530

    :goto_6
    invoke-virtual {v12, v3}, Lcom/inca/security/ka;->IiiiIIIIii(I)Lcom/inca/security/ka;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1138
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v4

    move-object v4, v6

    .line 1200
    goto/16 :goto_3

    .line 653
    :cond_b
    add-int/lit8 v3, v5, 0x1

    mul-int/lit16 v3, v3, 0x7d0

    add-int/lit16 v3, v3, 0x2710

    goto :goto_6

    .line 673
    :catch_1
    move-exception v3

    .line 721
    :try_start_7
    monitor-exit v7

    goto/16 :goto_0

    .line 810
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_d

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 915
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 1465
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    :cond_d
    move-object v3, v7

    .line 557
    goto/16 :goto_5

    .line 665
    :cond_e
    const-string v3, "\'\n7\n"

    invoke-static {v3}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 846
    const-string v13, "b[eQ"

    invoke-static {v13}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1342
    const/16 v13, 0xc8

    if-eq v4, v13, :cond_10

    .line 837
    new-instance v3, Lcom/inca/security/wc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1f41

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    .line 523
    invoke-virtual {v8}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/inca/security/wc;-><init>(Landroid/content/Context;I[BLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/inca/security/wc;->start()V

    .line 1256
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_f

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 1234
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 955
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 672
    :cond_f
    monitor-exit v7

    goto/16 :goto_0

    .line 1077
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v4}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v4, :cond_12

    :cond_11
    monitor-exit v7

    goto/16 :goto_0

    .line 707
    :cond_12
    const/4 v4, 0x4

    if-lt v6, v4, :cond_13

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_d

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x1

    .line 712
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 1139
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    move-object v3, v7

    goto/16 :goto_5

    .line 1498
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v4}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v4, :cond_15

    :cond_14
    monitor-exit v7

    goto/16 :goto_0

    .line 1059
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 1407
    new-instance v3, Lcom/inca/security/wc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1f42

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    .line 1184
    invoke-virtual {v8}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/inca/security/wc;-><init>(Landroid/content/Context;I[BLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/inca/security/wc;->start()V

    .line 569
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_16

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 500
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 1116
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 687
    :cond_16
    monitor-exit v7

    goto/16 :goto_0

    .line 858
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v4}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v4, :cond_19

    :cond_18
    monitor-exit v7

    goto/16 :goto_0

    .line 1443
    :cond_19
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1329
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/inca/security/nc;->IiiiIIIIii([B)Ljava/util/Map;

    move-result-object v3

    .line 602
    const-string v13, "\u001d\"\u0007*\u000f"

    invoke-static {v13}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 969
    if-nez v3, :cond_1b

    .line 1193
    new-instance v3, Lcom/inca/security/wc;

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1f42

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    .line 599
    invoke-virtual {v8}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/inca/security/wc;-><init>(Landroid/content/Context;I[BLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/inca/security/wc;->start()V

    .line 526
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_1a

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 1049
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 984
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 956
    :cond_1a
    monitor-exit v7

    goto/16 :goto_0

    .line 663
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v3, :cond_1d

    :cond_1c
    monitor-exit v7

    goto/16 :goto_0

    .line 615
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3, v6, v4, v8}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;I[B[B)I

    move-result v4

    .line 1099
    if-nez v4, :cond_1f

    .line 909
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-nez v3, :cond_1e

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x3

    .line 1225
    invoke-static {v6}, Lcom/inca/security/va;->IiiiIIIIii(I)[B

    move-result-object v6

    .line 866
    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 829
    :cond_1e
    monitor-exit v7

    goto/16 :goto_0

    .line 1180
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v3, :cond_21

    :cond_20
    monitor-exit v7

    goto/16 :goto_0

    .line 1527
    :cond_21
    const/4 v3, 0x3

    if-ne v6, v3, :cond_23

    .line 835
    const/16 v3, 0x104

    new-array v13, v3, [B

    .line 520
    const/4 v3, 0x0

    .line 1297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    const/16 v15, 0x1388

    invoke-static {v14, v15, v13}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;I[B)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_22

    .line 862
    invoke-static {v13}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 1163
    :cond_22
    :goto_7
    if-eqz v3, :cond_23

    .line 1172
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v13

    sget-object v14, Lcom/inca/security/lc;->IiIiIiiIii:Lcom/inca/security/lc;

    invoke-virtual {v13, v14, v3}, Lcom/inca/security/rc;->IiiiIIIIii(Lcom/inca/security/lc;[B)Z

    .line 1014
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/nc;->IiiiiIiiIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Z

    move-result v3

    if-nez v3, :cond_24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/inca/security/nc;->IIIiiiiIII:Z

    if-eqz v3, :cond_25

    :cond_24
    monitor-exit v7

    goto/16 :goto_0

    .line 804
    :pswitch_0
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 704
    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 842
    :cond_25
    new-array v3, v4, [B

    .line 1129
    const/4 v13, 0x0

    invoke-static {v8, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/inca/security/nc;->IiiiIIIIii([B)[B

    move-result-object v4

    .line 1243
    add-int/lit8 v3, v6, 0x1

    .line 896
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    move-object/from16 v2, p0

    move v6, v3

    .line 1336
    goto/16 :goto_4

    .line 671
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 1352
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
