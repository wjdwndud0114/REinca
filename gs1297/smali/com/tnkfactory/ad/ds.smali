.class public Lcom/tnkfactory/ad/ds;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/view/ViewGroup;

.field private e:Z

.field private f:J

.field private g:Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ZI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/tnkfactory/ad/ds;->a:I

    iput v1, p0, Lcom/tnkfactory/ad/ds;->b:I

    iput-object v2, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    iput-boolean v1, p0, Lcom/tnkfactory/ad/ds;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ds;->f:J

    iput-object v2, p0, Lcom/tnkfactory/ad/ds;->g:Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ds;->h:Landroid/os/Handler;

    new-instance v0, Lcom/tnkfactory/ad/dt;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/dt;-><init>(Lcom/tnkfactory/ad/ds;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ds;->i:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    instance-of v0, p1, Lcom/tnkfactory/ad/AdLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/tnkfactory/ad/AdLayout;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdLayout;->parentLayout()Lcom/tnkfactory/ad/AdLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tnkfactory/ad/AdLayout;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdLayout;->parentLayout()Lcom/tnkfactory/ad/AdLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0, p3}, Lcom/tnkfactory/ad/ds;->setId(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/tnkfactory/ad/ds;->a(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ds;J)J
    .locals 1

    iput-wide p1, p0, Lcom/tnkfactory/ad/ds;->f:J

    return-wide p1
.end method

.method public static a(Landroid/app/Activity;)Lcom/tnkfactory/ad/ds;
    .locals 1

    const/16 v0, 0x5f

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ft;->a(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/ds;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Z)Lcom/tnkfactory/ad/ds;
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/ds;

    const/16 v1, 0x5f

    invoke-direct {v0, p0, p1, v1}, Lcom/tnkfactory/ad/ds;-><init>(Landroid/view/ViewGroup;ZI)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Lcom/tnkfactory/ad/ds;->a:I

    iget v3, v0, Lcom/tnkfactory/ad/ds;->b:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ds;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ds;->setBackgroundColor(I)V

    new-instance v1, Lcom/tnkfactory/ad/du;

    invoke-direct {v1}, Lcom/tnkfactory/ad/du;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ds;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-static {p1}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->g()Lcom/tnkfactory/ad/hz;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/hz;->H:F

    const v1, 0x30909090

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/ds;->setBackgroundColor(I)V

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tnkfactory/ad/ds;->a:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tnkfactory/ad/ds;->b:I

    :goto_0
    iget v1, p0, Lcom/tnkfactory/ad/ds;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tnkfactory/ad/ds;->a:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/tnkfactory/ad/ds;->a(FFF)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x6

    aget v6, v1, v6

    const/4 v7, 0x7

    aget v1, v1, v7

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    invoke-static {p1, v7, v2}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x3f2

    invoke-static {p1, v3, v5}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/tnkfactory/ad/bj;->c(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v7, 0x2

    invoke-static {p1, v5, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLines(I)V

    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x1

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v7, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-object v7, v7, Lcom/tnkfactory/ad/TnkAdWallStyle;->Footer:Lcom/tnkfactory/ad/TnkStyle;

    iget v7, v7, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0xa

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const/16 v9, 0xa

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x3f3

    invoke-static {p1, v5, v4}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x1

    invoke-static {p1, v5, v7}, Lcom/tnkfactory/ad/ft;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLines(I)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x1

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v7, -0xfefeff

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, -0x1

    invoke-static {p1, v5, v7}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v8, v6

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    int-to-double v10, v6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v6, v10

    invoke-direct {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x8

    invoke-static {p1, v7, v6}, Lcom/tnkfactory/ad/ft;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/tnkfactory/ad/dv;

    invoke-direct {v7, p0}, Lcom/tnkfactory/ad/dv;-><init>(Lcom/tnkfactory/ad/ds;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    const/16 v7, 0x3f3

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x2

    const/16 v7, 0x3f2

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0x3f4

    invoke-static {p1, v5, v6}, Lcom/tnkfactory/ad/ft;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/tnkfactory/ad/bj;->b(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-static {p1, v0, v6}, Lcom/tnkfactory/ad/ft;->h(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    new-instance v6, Lcom/tnkfactory/ad/dw;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/dw;-><init>(Lcom/tnkfactory/ad/ds;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    new-instance v6, Lcom/tnkfactory/ad/ec;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/tnkfactory/ad/ec;-><init>(Lcom/tnkfactory/ad/ds;Lcom/tnkfactory/ad/dt;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v6, Lcom/tnkfactory/ad/ea;

    invoke-direct {v6, p0}, Lcom/tnkfactory/ad/ea;-><init>(Lcom/tnkfactory/ad/ds;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-static {p1, v0, v1}, Lcom/tnkfactory/ad/ft;->g(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/eb;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/eb;-><init>(Lcom/tnkfactory/ad/ds;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/ds;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->b()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/tnkfactory/ad/in;->l(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/tnkfactory/ad/ds;->a:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/tnkfactory/ad/ds;->b:I

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;Z)V
    .locals 3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, v2}, Lcom/tnkfactory/ad/ds;->a(Landroid/view/ViewGroup;Z)Lcom/tnkfactory/ad/ds;

    move-result-object v1

    instance-of v0, p2, Lcom/tnkfactory/ad/AdLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/ds;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/ds;->setFocusable(Z)V

    invoke-virtual {v1}, Lcom/tnkfactory/ad/ds;->requestFocus()Z

    iput-object p3, v1, Lcom/tnkfactory/ad/ds;->g:Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;

    invoke-virtual {v1, p0}, Lcom/tnkfactory/ad/ds;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tnkfactory/ad/ds;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ds;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ds;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ds;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ds;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ds;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tnkfactory/ad/ds;->e:Z

    return p1
.end method

.method private a(FFF)[I
    .locals 12

    const/high16 v11, 0x42200000    # 40.0f

    const v3, 0x3f70a3d7    # 0.94f

    const/high16 v10, 0x3f000000    # 0.5f

    const/16 v0, 0x14

    new-array v2, v0, [I

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    mul-float v1, p2, v3

    mul-float v0, p1, v3

    :goto_0
    mul-float v3, v11, p3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, p3

    const v5, 0x3fe66666    # 1.8f

    mul-float/2addr v5, v4

    const v6, 0x3f0e5604    # 0.556f

    mul-float/2addr v6, v4

    const/high16 v7, 0x42040000    # 33.0f

    mul-float/2addr v7, p3

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40000000    # 2.0f

    sub-float v9, p3, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    mul-float v8, v11, p3

    const/4 v9, 0x0

    add-float/2addr v1, v10

    float-to-int v1, v1

    aput v1, v2, v9

    const/4 v1, 0x1

    add-float/2addr v0, v10

    float-to-int v0, v0

    aput v0, v2, v1

    const/4 v0, 0x2

    add-float v1, v3, v10

    float-to-int v1, v1

    aput v1, v2, v0

    const/4 v0, 0x3

    add-float v1, v4, v10

    float-to-int v1, v1

    aput v1, v2, v0

    const/4 v0, 0x4

    add-float v1, v5, v10

    float-to-int v1, v1

    aput v1, v2, v0

    const/4 v0, 0x5

    add-float v1, v6, v10

    float-to-int v1, v1

    aput v1, v2, v0

    const/4 v0, 0x6

    add-float v1, v7, v10

    float-to-int v1, v1

    aput v1, v2, v0

    const/4 v0, 0x7

    add-float v1, v8, v10

    float-to-int v1, v1

    aput v1, v2, v0

    return-object v2

    :cond_0
    mul-float v1, p2, v3

    mul-float v0, p1, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ds;)J
    .locals 2

    iget-wide v0, p0, Lcom/tnkfactory/ad/ds;->f:J

    return-wide v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/ds;->a(Landroid/app/Activity;)Lcom/tnkfactory/ad/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->e()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "http://market.android.com/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "http://market.android.com/"

    const-string v4, "market://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    const-string v3, "market://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "tstore://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "cstore://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ozstore://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "onestore://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->e()V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "https://market.android.com/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "https://market.android.com/"

    const-string v4, "market://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string v3, "http://play.google.com/store/apps/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "http://play.google.com/store/apps/"

    const-string v4, "market://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string v3, "https://play.google.com/store/apps/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "https://play.google.com/store/apps/"

    const-string v4, "market://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->K:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v3, "intent://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v3

    :try_start_3
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    :try_start_4
    invoke-static {v3, v4}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    iget-object v4, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :goto_3
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->e()V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    :try_start_5
    iget-object v4, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v5

    iget-object v5, v5, Lcom/tnkfactory/ad/ha;->I:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->I:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v3, "tnkad"

    const-string v4, "no activity found for this intent.. try to go to Googleplay..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v3, v2

    :goto_4
    const/4 v4, 0x1

    :try_start_6
    invoke-static {v2, v4}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    iget-object v4, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    const-string v2, "tnkad"

    const-string v4, "no activity found for this intent.. try to go to Googleplay..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v2, "close://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->e()V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tnkfactory/ad/in;->a(Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ds;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :goto_5
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->e()V

    move v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4

    :catch_8
    move-exception v4

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_4
.end method

.method static synthetic c(Lcom/tnkfactory/ad/ds;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ds;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ds;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ds;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/ds;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tnkfactory/ad/ds;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x4

    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tnkfactory/ad/ds;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->g:Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/ds;->g:Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;->a()V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tnkfactory/ad/ds;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tnkfactory/ad/ds;->g()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/ds;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/ds;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
