.class public Lcom/igaworks/adpopcorn/activity/b/d$c;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/activity/b/d$c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:Landroid/graphics/drawable/GradientDrawable;

.field private e:Landroid/widget/AdapterView$OnItemClickListener;

.field private f:Z

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:Lcom/igaworks/adpopcorn/activity/b/d$c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;IZLandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->h:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->e:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean p5, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->f:Z

    iput p4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->g:I

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/d$c;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->c:D

    return-wide v0
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->c:D

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->d:Landroid/graphics/drawable/GradientDrawable;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/d$c;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->g:I

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/b/d$c;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    return-wide v0
.end method

.method private b()Landroid/view/View;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x2

    const-wide v10, 0x4082c00000000000L    # 600.0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    mul-double/2addr v2, v10

    double-to-int v2, v2

    invoke-direct {v1, v2, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    mul-double/2addr v4, v10

    double-to-int v3, v4

    invoke-direct {v2, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->h:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/igaworks/adpopcorn/activity/b/d$c$a;-><init>(Lcom/igaworks/adpopcorn/activity/b/d$c;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->i:Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->i:Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x312b26

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->c:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/d$c$1;

    invoke-direct {v2, p0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$c$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/d$c;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/d$c$2;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/activity/b/d$c$2;-><init>(Lcom/igaworks/adpopcorn/activity/b/d$c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->g:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/b/d$c;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->g:I

    return v0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/b/d$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/b/d$c;)Lcom/igaworks/adpopcorn/activity/b/d$c$a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->i:Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/b/d$c;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->e:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c;->a:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->setContentView(Landroid/view/View;)V

    return-void
.end method
