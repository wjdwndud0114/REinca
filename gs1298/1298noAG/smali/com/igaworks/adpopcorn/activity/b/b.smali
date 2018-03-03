.class public Lcom/igaworks/adpopcorn/activity/b/b;
.super Landroid/app/Dialog;


# instance fields
.field private a:D

.field private b:D

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/igaworks/adpopcorn/cores/model/d;

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/igaworks/adpopcorn/cores/model/d;ZLandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->e:Lcom/igaworks/adpopcorn/cores/model/d;

    iput p3, p0, Lcom/igaworks/adpopcorn/activity/b/b;->c:I

    iput-boolean p5, p0, Lcom/igaworks/adpopcorn/activity/b/b;->f:Z

    iput-object p6, p0, Lcom/igaworks/adpopcorn/activity/b/b;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4086800000000000L    # 720.0

    div-double/2addr v0, v2

    const-wide v2, 0x4077800000000000L    # 376.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 14

    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    const/4 v10, -0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->c:I

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/b;->a(I)I

    move-result v0

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x31

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    invoke-virtual {v6, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/b$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/b$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/b;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    mul-double/2addr v4, v12

    double-to-int v4, v4

    invoke-direct {v2, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->f:Z

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v4, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v2, v4}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->e:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/igaworks/adpopcorn/activity/b/b$2;

    invoke-direct {v5, p0, v2}, Lcom/igaworks/adpopcorn/activity/b/b$2;-><init>(Lcom/igaworks/adpopcorn/activity/b/b;Landroid/widget/ImageView;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v0, v12

    double-to-int v0, v0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v12

    double-to-int v1, v4

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/b;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v12

    double-to-int v1, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v12

    double-to-int v2, v4

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/content/Context;I)Lcom/igaworks/adpopcorn/activity/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/b;->e:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1, v1, v2, v4, v11}, Lcom/igaworks/adpopcorn/activity/a/a/b;->a(Landroid/view/View;Landroid/content/Context;Lcom/igaworks/adpopcorn/cores/model/d;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x406fe00000000000L    # 255.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_pick.png"

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/b$3;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/b$3;-><init>(Lcom/igaworks/adpopcorn/activity/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/b$4;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/b$4;-><init>(Lcom/igaworks/adpopcorn/activity/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide v4, 0x4041800000000000L    # 35.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-wide v4, 0x4041800000000000L    # 35.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->a:D

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_close.png"

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/b$5;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/b$5;-><init>(Lcom/igaworks/adpopcorn/activity/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v6

    :cond_0
    const-wide v4, 0x405bc00000000000L    # 111.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/b/b;->b:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/b;->d:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/b;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/b;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/b;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/b;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V

    return-void
.end method
