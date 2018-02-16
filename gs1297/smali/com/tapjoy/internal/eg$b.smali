.class final Lcom/tapjoy/internal/eg$b;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/tapjoy/internal/dk;->c:Lcom/tapjoy/internal/dk;

    const-class v1, Lcom/tapjoy/internal/eg;

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 363
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 360
    check-cast p1, Lcom/tapjoy/internal/eg;

    .line 3367
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v2

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    .line 3368
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/dn;->o:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    .line 3369
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    .line 3370
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    .line 3371
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    .line 3372
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    .line 3373
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    .line 3374
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_6
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    .line 3375
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_7
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tapjoy/internal/dn;->i:Lcom/tapjoy/internal/dn;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    .line 3376
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_8
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    .line 3377
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_9
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    .line 3378
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_a
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    .line 3379
    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    .line 3380
    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 3381
    invoke-virtual {p1}, Lcom/tapjoy/internal/eg;->a()Lcom/tapjoy/internal/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    return v0

    :cond_1
    move v0, v1

    .line 3368
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 3369
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 3370
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 3371
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 3372
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 3373
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 3374
    goto :goto_6

    :cond_8
    move v0, v1

    .line 3375
    goto :goto_7

    :cond_9
    move v0, v1

    .line 3376
    goto :goto_8

    :cond_a
    move v0, v1

    .line 3377
    goto :goto_9

    :cond_b
    move v0, v1

    .line 3378
    goto :goto_a

    :cond_c
    move v0, v1

    .line 3379
    goto :goto_b
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 360
    .line 1405
    new-instance v1, Lcom/tapjoy/internal/eg$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/eg$a;-><init>()V

    .line 1406
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->a()J

    move-result-wide v2

    .line 1407
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->b()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1408
    packed-switch v0, :pswitch_data_0

    .line 1424
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->c()Lcom/tapjoy/internal/dk;

    move-result-object v4

    .line 1425
    invoke-virtual {v4}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dn;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v5

    .line 1426
    invoke-virtual {v1, v0, v4, v5}, Lcom/tapjoy/internal/eg$a;->a(ILcom/tapjoy/internal/dk;Ljava/lang/Object;)Lcom/tapjoy/internal/dl$a;

    goto :goto_0

    .line 1409
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2282
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1410
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2287
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1411
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/dn;->o:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 2292
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->e:Ljava/lang/Double;

    goto :goto_0

    .line 1412
    :pswitch_3
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2297
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->f:Ljava/lang/String;

    goto :goto_0

    .line 1413
    :pswitch_4
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2302
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 1414
    :pswitch_5
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2307
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->h:Ljava/lang/String;

    goto :goto_0

    .line 1415
    :pswitch_6
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2312
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->i:Ljava/lang/String;

    goto :goto_0

    .line 1416
    :pswitch_7
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2317
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->j:Ljava/lang/String;

    goto :goto_0

    .line 1417
    :pswitch_8
    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2322
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 1418
    :pswitch_9
    sget-object v0, Lcom/tapjoy/internal/dn;->i:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2327
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->l:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1419
    :pswitch_a
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2332
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 1420
    :pswitch_b
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2337
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 1421
    :pswitch_c
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2342
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->o:Ljava/lang/String;

    goto/16 :goto_0

    .line 1422
    :pswitch_d
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2347
    iput-object v0, v1, Lcom/tapjoy/internal/eg$a;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 1430
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/do;->a(J)V

    .line 1431
    invoke-virtual {v1}, Lcom/tapjoy/internal/eg$a;->b()Lcom/tapjoy/internal/eg;

    move-result-object v0

    .line 360
    return-object v0

    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 360
    check-cast p2, Lcom/tapjoy/internal/eg;

    .line 2386
    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2387
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2388
    :cond_0
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dn;->o:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2389
    :cond_1
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2390
    :cond_2
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2391
    :cond_3
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2392
    :cond_4
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2393
    :cond_5
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2394
    :cond_6
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tapjoy/internal/dn;->d:Lcom/tapjoy/internal/dn;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2395
    :cond_7
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/dn;->i:Lcom/tapjoy/internal/dn;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2396
    :cond_8
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2397
    :cond_9
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2398
    :cond_a
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2399
    :cond_b
    iget-object v0, p2, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tapjoy/internal/dn;->p:Lcom/tapjoy/internal/dn;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2400
    :cond_c
    invoke-virtual {p2}, Lcom/tapjoy/internal/eg;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 360
    return-void
.end method
