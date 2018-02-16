.class Lcom/tnkfactory/ad/eg;
.super Ljava/lang/Object;


# direct methods
.method private static a()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method public static a(I)Landroid/view/animation/Animation;
    .locals 9

    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/tnkfactory/ad/eg;->e()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/tnkfactory/ad/eg;->g()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/tnkfactory/ad/eg;->b()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/tnkfactory/ad/eg;->d()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static b()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v2
.end method

.method public static b(I)Landroid/view/animation/Animation;
    .locals 9

    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/tnkfactory/ad/eg;->f()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/tnkfactory/ad/eg;->h()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/tnkfactory/ad/eg;->c()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/tnkfactory/ad/eg;->a()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static c()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method public static c(I)Landroid/view/animation/Animation;
    .locals 9

    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/tnkfactory/ad/eg;->e()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/tnkfactory/ad/eg;->g()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/tnkfactory/ad/eg;->b()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/tnkfactory/ad/eg;->d()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static d()Landroid/view/animation/Animation;
    .locals 9

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v2
.end method

.method public static d(I)Landroid/view/animation/Animation;
    .locals 9

    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/tnkfactory/ad/eg;->f()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/tnkfactory/ad/eg;->h()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/tnkfactory/ad/eg;->c()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/tnkfactory/ad/eg;->a()Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static e()Landroid/view/animation/Animation;
    .locals 14

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    move v6, v1

    move v8, v1

    move v9, v7

    move v10, v3

    move v11, v4

    move v12, v3

    move v13, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method private static f()Landroid/view/animation/Animation;
    .locals 14

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3bcc0000    # -720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    move v6, v9

    move v7, v1

    move v8, v9

    move v9, v1

    move v10, v3

    move v11, v4

    move v12, v3

    move v13, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method private static g()Landroid/view/animation/Animation;
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const v13, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v12, 0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/tnkfactory/ad/fn;

    const/high16 v1, -0x3d540000    # -86.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/tnkfactory/ad/fn;-><init>(FFFFFI)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const v6, -0x40e66666    # -0.6f

    move v5, v12

    move v7, v12

    move v8, v2

    move v9, v12

    move v10, v2

    move v11, v12

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/4 v12, 0x1

    move v6, v13

    move v7, v14

    move v8, v13

    move v9, v14

    move v11, v2

    move v13, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method private static h()Landroid/view/animation/Animation;
    .locals 16

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    new-instance v0, Lcom/tnkfactory/ad/fn;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f400000    # 0.75f

    move v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/tnkfactory/ad/fn;-><init>(FFFFFI)V

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const v11, 0x3f99999a    # 1.2f

    move v9, v1

    move v10, v8

    move v12, v8

    move v13, v1

    move v14, v8

    move v15, v1

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v1
.end method
