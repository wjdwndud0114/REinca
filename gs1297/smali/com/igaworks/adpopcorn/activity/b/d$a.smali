.class public Lcom/igaworks/adpopcorn/activity/b/d$a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:D

.field private c:D

.field private d:Landroid/graphics/drawable/GradientDrawable;

.field private e:Landroid/graphics/drawable/GradientDrawable;

.field private f:Landroid/graphics/drawable/GradientDrawable;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lcom/igaworks/adpopcorn/cores/common/f;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Landroid/view/View$OnClickListener;

.field private q:Z

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->h:Landroid/view/View$OnClickListener;

    iput-object p9, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->i:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    iput-object p8, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->n:Ljava/lang/String;

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    iput-object p11, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->q:Z

    iput-boolean p10, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->h:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    iput-object p9, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->q:Z

    iput-boolean p8, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->h:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->q:Z

    iput-boolean p8, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IFLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    iput-object p8, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->h:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    iput p5, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    iput-object p7, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    iput-object p10, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->q:Z

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/d$a;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a()V
    .locals 12

    const-wide v10, 0x4041800000000000L    # 35.0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->j:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->d:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v3, v0

    aput v3, v2, v5

    int-to-float v3, v0

    aput v3, v2, v8

    int-to-float v3, v0

    aput v3, v2, v7

    const/4 v3, 0x3

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v6, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->e:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v6, v2, v5

    aput v6, v2, v8

    aput v6, v2, v7

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v0, v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v7, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_NEGATIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_NEGATIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "COMMON_DIALOG_NEGATIVE_BTN_LINE_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    :array_0
    .array-data 4
        -0xe0c0b
        -0xe0c0b
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private b()Landroid/view/View;
    .locals 18

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->k:Ljava/lang/String;

    const/16 v4, 0x23

    const/4 v5, 0x0

    const-string v6, "#343a40"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-wide v4, 0x4056800000000000L    # 90.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide v4, 0x4041800000000000L    # 35.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x4056800000000000L    # 90.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->p:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#343a40"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/igaworks/adpopcorn/activity/b/d$a$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/igaworks/adpopcorn/activity/b/d$a$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/d$a;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->r:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const-wide v4, 0x404b800000000000L    # 55.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4045000000000000L    # 42.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x404b800000000000L    # 55.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v14, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/d$a$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v14}, Lcom/igaworks/adpopcorn/activity/b/d$a$2;-><init>(Lcom/igaworks/adpopcorn/activity/b/d$a;Landroid/widget/TextView;Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x31

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->e:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x4051800000000000L    # 70.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->q:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "COMMON_DIALOG_POSITIVE_BTN_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide v6, 0x4051800000000000L    # 70.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->n:Ljava/lang/String;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v8, "COMMON_DIALOG_POSITIVE_BTN_TEXT_COLOR"

    invoke-virtual {v3, v8}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v4 .. v15}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->f:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_3
    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v16

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->l:Ljava/lang/String;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    const-string v6, "#343a40"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x406fe00000000000L    # 255.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v6, 0x4051800000000000L    # 70.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->m:Ljava/lang/String;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "COMMON_DIALOG_NEGATIVE_BTN_TEXT_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adpopcorn/activity/b/d$a;->o:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/b/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/b/d$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->c:D

    return-wide v0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/b/d$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->b:D

    return-wide v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a;->a:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setContentView(Landroid/view/View;)V

    return-void
.end method
