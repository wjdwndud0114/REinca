.class public Lcom/tnkfactory/ad/jn;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/tnkfactory/ad/fv;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/jn;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/jn;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/jo;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/jo;-><init>(Lcom/tnkfactory/ad/jn;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/jn;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/jn;->a(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/jn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/jn;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;III)Lcom/tnkfactory/ad/jn;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/tnkfactory/ad/jn;

    invoke-direct {v1, p0, p1, p2}, Lcom/tnkfactory/ad/jn;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, p3}, Lcom/tnkfactory/ad/jn;->setId(I)V

    invoke-virtual {v1, v0}, Lcom/tnkfactory/ad/jn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private a(Landroid/content/Context;II)V
    .locals 12

    const/16 v11, 0xb

    const/4 v5, 0x5

    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v9, 0x0

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/jn;->b(FF)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/jn;->a(FF)[I

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x4

    aget v2, v0, v2

    aget v3, v0, v5

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc9

    invoke-static {p1, v1, v2}, Lcom/tnkfactory/ad/ft;->i(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Lcom/tnkfactory/ad/fu;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/fu;->setMedieViewListener(Lcom/tnkfactory/ad/fv;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0xcc

    invoke-static {p1, v2, v3}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    aget v3, v0, v9

    aget v4, v0, v10

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v0, v0, v6

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v7, v3, v5

    add-int/2addr v7, v4

    add-int v8, v3, v0

    add-int/2addr v8, v4

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xca

    invoke-static {p1, v6, v7}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v6, v4, v4, v3, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->c()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v7, Lcom/tnkfactory/ad/jq;

    invoke-direct {v7, p0}, Lcom/tnkfactory/ad/jq;-><init>(Lcom/tnkfactory/ad/jn;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/jn;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/jn;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/tnkfactory/ad/jn;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/TnkAdVideoStyle;->noClose:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v2, v3, v5

    add-int/2addr v2, v4

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xcb

    invoke-static {p1, v1, v0}, Lcom/tnkfactory/ad/ft;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v4, v3, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/jn;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/jn;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/jn;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/jn;->a:I

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/tnkfactory/ad/jn;->a:I

    :goto_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getTimeView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tnkfactory/ad/jn;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getVolumnButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/tnkfactory/ad/jn;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getCloseButton()Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/tnkfactory/ad/jn;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/jn;->a:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/jn;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/jn;->b(I)Z

    move-result v0

    return v0
.end method

.method private a(FF)[I
    .locals 8

    const/4 v0, -0x1

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v1, 0x14

    new-array v4, v1, [I

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    div-float v1, p1, p2

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    float-to-int v1, p1

    mul-float v0, p1, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    :goto_0
    const v2, 0x3d1374bc    # 0.036f

    mul-float/2addr v2, p1

    move v3, v1

    move v1, v0

    move v0, v2

    :goto_1
    const/4 v5, 0x0

    const v6, 0x3eaa7efa    # 0.333f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x3f956042    # 1.167f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    add-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v4, v5

    const/4 v2, 0x3

    add-float/2addr v0, v7

    float-to-int v0, v0

    aput v0, v4, v2

    const/4 v0, 0x4

    aput v3, v4, v0

    const/4 v0, 0x5

    aput v1, v4, v0

    return-object v4

    :cond_0
    float-to-int v2, p1

    mul-float v0, p1, v3

    div-float/2addr v0, v5

    float-to-int v1, v0

    const v0, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, p1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getVolumnButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getMediaView()Lcom/tnkfactory/ad/fu;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lcom/tnkfactory/ad/fu;->b()V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lcom/tnkfactory/ad/fu;->a()V

    goto :goto_0
.end method

.method private b(FF)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tnkfactory/ad/jn;->b:F

    iput p1, p0, Lcom/tnkfactory/ad/jn;->d:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p2

    sub-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tnkfactory/ad/jn;->c:F

    iget v0, p0, Lcom/tnkfactory/ad/jn;->c:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/tnkfactory/ad/jn;->e:F

    return-void
.end method

.method static synthetic b(Lcom/tnkfactory/ad/jn;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/jn;->b()V

    return-void
.end method

.method private b(I)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/jn;->getTimeView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    div-int/lit16 v0, p1, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/jn;->b(I)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/jn;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tnkfactory/ad/jn;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/jn;->f:Landroid/os/Handler;

    new-instance v1, Lcom/tnkfactory/ad/jp;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/jp;-><init>(Lcom/tnkfactory/ad/jn;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCloseButton()Landroid/widget/ImageButton;
    .locals 1

    const/16 v0, 0xcb

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getMediaView()Lcom/tnkfactory/ad/fu;
    .locals 1

    const/16 v0, 0xc9

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/fu;

    return-object v0
.end method

.method public getTimeView()Landroid/widget/TextView;
    .locals 1

    const/16 v0, 0xcc

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getVolumnButton()Landroid/widget/ImageButton;
    .locals 1

    const/16 v0, 0xca

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/jn;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/jn;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/jn;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/tnkfactory/ad/jn;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/jn;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
