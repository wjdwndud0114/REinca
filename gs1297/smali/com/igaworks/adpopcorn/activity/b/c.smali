.class public Lcom/igaworks/adpopcorn/activity/b/c;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/activity/b/c$a;
    }
.end annotation


# instance fields
.field private A:Lcom/igaworks/adpopcorn/activity/b/e;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/ListView;

.field private I:Lcom/igaworks/adpopcorn/activity/b/c$a;

.field private J:Landroid/widget/EditText;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/widget/EditText;

.field private M:Landroid/widget/EditText;

.field private N:Landroid/widget/EditText;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private final S:I

.field private final T:I

.field private final U:I

.field private final V:I

.field private final W:I

.field private final X:I

.field private Y:Lcom/igaworks/adpopcorn/cores/c;

.field private Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

.field private a:Landroid/content/Context;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:Lcom/igaworks/adpopcorn/cores/common/f;

.field private e:Landroid/widget/LinearLayout;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Landroid/graphics/drawable/GradientDrawable;

.field private l:Landroid/graphics/drawable/GradientDrawable;

.field private m:Landroid/graphics/drawable/GradientDrawable;

.field private n:Landroid/graphics/drawable/GradientDrawable;

.field private o:Landroid/graphics/drawable/GradientDrawable;

.field private p:Landroid/graphics/drawable/GradientDrawable;

.field private q:I

.field private r:Lcom/igaworks/adpopcorn/cores/c/a;

.field private s:Lcom/igaworks/adpopcorn/activity/b/d$c;

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/ArrayList;

.field private v:Ljava/util/ArrayList;

.field private w:Ljava/util/ArrayList;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->S:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->T:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->U:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->V:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->W:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->X:I

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->q:I

    iput-boolean p3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/c;->g:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/igaworks/adpopcorn/cores/common/f;DDZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->S:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->T:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->U:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->V:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->W:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->X:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->q:I

    iput-boolean p3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    iput-boolean p9, p0, Lcom/igaworks/adpopcorn/activity/b/c;->g:Z

    iput-object p10, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    return-wide v0
.end method

.method private a()V
    .locals 12

    const/16 v1, 0x400

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "TOP_BAR_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "TOP_BAR_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->i:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->i:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "COMMON_DIALOG_POSITIVE_BTN_BG_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    const-wide v2, 0x4041800000000000L    # 35.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#363f4b"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->l:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->l:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->o:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->o:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->o:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->o:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v8, [I

    fill-array-data v2, :array_6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->m:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#dee2e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Y:Lcom/igaworks/adpopcorn/cores/c;

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->r:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    iput v6, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    iput v6, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    :array_2
    .array-data 4
        -0xe0c0b
        -0xe0c0b
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private a(I)V
    .locals 10

    const/4 v9, 0x1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v9, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4077c00000000000L    # 380.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x406a000000000000L    # 208.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4043000000000000L    # 38.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v2, 0x4071d00000000000L    # 285.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->f()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;Lcom/igaworks/adpopcorn/activity/b/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;Lcom/igaworks/adpopcorn/activity/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[_a-zA-Z0-9-\\.]+@[\\.a-zA-Z0-9-]+\\.[a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/b/c;)D
    .locals 2

    iget-wide v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    return-wide v0
.end method

.method private b()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->c()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_SHADOW"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->e()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/c;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/c;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/b/c;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    return-void
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/b/c;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    return v0
.end method

.method private c()Landroid/widget/RelativeLayout;
    .locals 14

    new-instance v12, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_HEIGHT"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v13, v0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "TOP_BAR_BG_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v2, 0x4064a00000000000L    # 165.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x404b000000000000L    # 54.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bf:Ljava/lang/String;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    :goto_0
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/c$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/c$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "TOP_BAR_TEXT_SIZE_DP"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "TOP_BAR_TEXT_BOLD"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_0
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v2, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v2, 0x403c000000000000L    # 28.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const-string v3, "igaworks/adpopcorn/res/ic_close.png"

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_1
    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/c$4;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/activity/b/c$4;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/b/c$5;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/b/c$5;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v12

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bf:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v4

    const-string v5, "TOP_BAR_TEXT_COLOR"

    invoke-virtual {v4, v5}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v0 .. v11}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v2, "TOP_BAR_CLOSE_BTN_RESOURCE_WIDTH"

    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v3, "TOP_BAR_CLOSE_BTN_RESOURCE_HEIGHT"

    invoke-virtual {v0, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    int-to-float v3, v0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v2

    const-string v3, "TOP_BAR_CLOSE_BTN_RESOURCE_ID"

    invoke-virtual {v2, v3}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/b/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/b/c;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/b/c;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->q:I

    return v0
.end method

.method private d()Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/shadow.png"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/b/c;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    return-void
.end method

.method private e()Landroid/widget/FrameLayout;
    .locals 18

    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x4043000000000000L    # 38.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bi:Ljava/lang/String;

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#495057"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->i:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bj:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    const/4 v5, 0x0

    const-string v6, "#495057"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...<u>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->cd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    const/4 v5, 0x0

    const-string v6, "#495057"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/c$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/c$6;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->k:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/c$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/c$7;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->Q:Ljava/lang/String;

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const-string v4, "igaworks/adpopcorn/res/ic_down.png"

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v3

    const-string v4, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v3, v4}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->C:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v2, Lcom/igaworks/adpopcorn/cores/common/f;->bn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    if-eqz v2, :cond_0

    const-string v2, "\n"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    const/16 v4, 0x18

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

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->P:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    const-string v3, ""

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bo:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    const-string v3, "#adb5bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    const-string v3, ""

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bq:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    const-string v3, "#adb5bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    const-string v3, ""

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->l:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    const-string v3, "#adb5bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->o:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4046000000000000L    # 44.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "@"

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4068a00000000000L    # 197.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bO:Ljava/lang/String;

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->bR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    const-string v3, "#adb5bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/c$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/c$8;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x4036000000000000L    # 22.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const-string v5, "igaworks/adpopcorn/res/ic_down.png"

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    const-string v4, "#ced4da"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide v4, 0x4060400000000000L    # 130.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/igaworks/adpopcorn/activity/b/c$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->v:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/igaworks/adpopcorn/activity/b/c$a;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->I:Lcom/igaworks/adpopcorn/activity/b/c$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->I:Lcom/igaworks/adpopcorn/activity/b/c$a;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/c$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/c$9;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->H:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const-wide/high16 v4, 0x406a000000000000L    # 208.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const-string v3, ""

    const/16 v4, 0x19

    const/4 v5, 0x0

    const-string v6, "#adb5bd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->m:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const-string v3, "#adb5bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->T:Ljava/lang/String;

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-string v6, "#495057"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->Q:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide v4, 0x4051800000000000L    # 70.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->n:Ljava/lang/String;

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

    const/4 v9, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-static/range {v2 .. v13}, Lcom/igaworks/adpopcorn/cores/common/i;->a(Landroid/widget/TextView;Ljava/lang/String;IIILandroid/graphics/Typeface;IILandroid/text/TextUtils$TruncateAt;ZD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    new-instance v3, Lcom/igaworks/adpopcorn/activity/b/c$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adpopcorn/activity/b/c$10;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->D:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/igaworks/adpopcorn/activity/b/c;->b:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v14
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    return v0
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    iget v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    new-instance v6, Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/b/c$11;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adpopcorn/activity/b/d$c;-><init>(Landroid/content/Context;ILjava/util/ArrayList;IZLandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    return-object v0
.end method

.method private h()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    iget v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    iget-boolean v5, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    new-instance v6, Lcom/igaworks/adpopcorn/activity/b/c$2;

    invoke-direct {v6, p0}, Lcom/igaworks/adpopcorn/activity/b/c$2;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adpopcorn/activity/b/d$c;-><init>(Landroid/content/Context;ILjava/util/ArrayList;IZLandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/igaworks/adpopcorn/activity/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Z)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Y:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adid"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Y:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->aa:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    sget-boolean v1, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->r:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x7

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/mediaservice.svc/cscampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Y:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string v1, "usn"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Y:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->r:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x7

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/media/mediaservice.svc/cscampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic k(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/e;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    return-object v0
.end method

.method private k()V
    .locals 7

    const/16 v6, 0x11

    const/4 v3, 0x1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->R:Ljava/lang/String;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/a;->c()I

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "auth"

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    iget v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "customer_name"

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->J:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    const-string v0, "customer_phone"

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->K:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "customer_email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "message"

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->N:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Z)V

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->r:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x8

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/mediaservice.svc/addcs"

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->S:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->V:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->S:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->o:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->S:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->p:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->r:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x8

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/media/mediaservice.svc/addcs"

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->g()V

    return-void
.end method

.method static synthetic m(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->h()V

    return-void
.end method

.method static synthetic n(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/c$a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->I:Lcom/igaworks/adpopcorn/activity/b/c$a;

    return-object v0
.end method

.method static synthetic o(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->f()V

    return-void
.end method

.method static synthetic p(Lcom/igaworks/adpopcorn/activity/b/c;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->x:I

    return v0
.end method

.method static synthetic q(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic r(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->k()V

    return-void
.end method

.method static synthetic s(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    return-object v0
.end method

.method static synthetic v(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->s:Lcom/igaworks/adpopcorn/activity/b/d$c;

    return-object v0
.end method

.method static synthetic w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->M:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic x(Lcom/igaworks/adpopcorn/activity/b/c;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->z:I

    return v0
.end method

.method static synthetic y(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->w:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->B:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->b()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->j()V

    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->i()V

    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_2

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "CSCampaigns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CSCampaigns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Auth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CSSource"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CSTypeCode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v6, Lcom/igaworks/adpopcorn/cores/model/a;

    invoke-direct {v6}, Lcom/igaworks/adpopcorn/cores/model/a;-><init>()V

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/a;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/igaworks/adpopcorn/cores/model/a;->c(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/igaworks/adpopcorn/cores/model/a;->b(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/a;->a(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->t:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->u:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/b/c;->i()V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-lez v0, :cond_5

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/b/c;->q:I

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->U:Ljava/lang/String;

    const v5, 0x3f59999a    # 0.85f

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v6, Lcom/igaworks/adpopcorn/cores/common/f;->L:Ljava/lang/String;

    new-instance v7, Lcom/igaworks/adpopcorn/activity/b/c$3;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/b/c$3;-><init>(Lcom/igaworks/adpopcorn/activity/b/c;)V

    iget-boolean v8, p0, Lcom/igaworks/adpopcorn/activity/b/c;->f:Z

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZZ)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->Z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :cond_5
    :try_start_5
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->d:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->g:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/b/c;->c:D

    const/16 v6, 0x11

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/e;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c;->A:Lcom/igaworks/adpopcorn/activity/b/e;

    :cond_0
    return-void
.end method
