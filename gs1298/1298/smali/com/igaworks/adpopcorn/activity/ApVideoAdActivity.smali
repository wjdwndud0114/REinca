.class public Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;


# instance fields
.field private A:Lcom/igaworks/adpopcorn/activity/b/d$b;

.field private B:Lcom/igaworks/adpopcorn/cores/c/a;

.field private C:D

.field private D:D

.field private E:I

.field private F:Landroid/graphics/drawable/GradientDrawable;

.field private G:Landroid/graphics/drawable/GradientDrawable;

.field private H:Lcom/igaworks/adpopcorn/cores/d;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Landroid/widget/ImageView;

.field private R:Z

.field private S:I

.field private T:Landroid/widget/ProgressBar;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/ImageView;

.field private Y:Ljava/lang/String;

.field private Z:Z

.field private final a:Ljava/lang/String;

.field private aa:Landroid/widget/LinearLayout;

.field private ab:I

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private final af:I

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Lcom/igaworks/adpopcorn/activity/c/d;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private v:Ljava/lang/Runnable;

.field private w:Lcom/igaworks/adpopcorn/cores/common/f;

.field private x:Z

.field private y:Z

.field private z:Lcom/igaworks/adpopcorn/activity/b/d$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ApVideoAdActivity"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->J:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Z:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ac:I

    iput v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ad:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ae:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->af:I

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:Lcom/igaworks/adpopcorn/cores/d;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->F:Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x3

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/common/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/common/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    sget-boolean v0, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "https://rpi-staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completerewardvideocampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "https://rpi.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completerewardvideocampaign"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Ljava/lang/String;

    goto :goto_0

    :array_0
    .array-data 4
        0x66000000
        0x66000000
    .end array-data
.end method

.method private a(I)V
    .locals 10

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    const/16 v7, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v6, 0x0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4036000000000000L    # 22.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide v2, 0x4051800000000000L    # 70.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iput p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4051000000000000L    # 68.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide v2, 0x4046800000000000L    # 45.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-string v1, "#ffe066"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-wide v2, 0x4046800000000000L    # 45.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v2, 0x403b000000000000L    # 27.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-string v1, "#ffe066"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private a(ILjava/lang/String;)V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->as:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->B:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    const v5, 0x3f333333    # 0.7f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;

    invoke-direct {v9, p0, p1, p2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$8;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;ILjava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    return-void
.end method

.method private a(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 8

    const/16 v7, 0x1a

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x66

    const-string v1, "Server Timeout"

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardRequest return = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ResultMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->bb:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    const/16 v6, 0x50

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    :cond_2
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardRequest skipEnable redirectURL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    const-string v3, "Your reward was delivered successfully. It may take up to 5 minutes to receive your reward depending on the network conditions."

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x64

    const-string v2, "Unknown Server Error"

    invoke-direct {p0, v1, v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardRequest success, VIDEO_AD_CLICK_TYPE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x7d0

    if-ne v2, v1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->k:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    const/16 v6, 0x50

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardRequest skipEnable redirectURL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x6b

    const-string v3, "You have already participated in this campaign."

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackRewardRequest Already Participate, VIDEO_AD_CLICK_TYPE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_3

    :cond_8
    const/16 v1, 0x3e7

    if-eq v2, v1, :cond_9

    const/16 v1, 0x3e8

    if-ne v2, v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->s:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x6d

    invoke-virtual {v1, v2, v3, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    const/16 v1, 0x6d

    invoke-direct {p0, v1, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x64

    const-string v1, "Unknown Server Error"

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    const v5, 0x3f333333    # 0.7f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$6;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$6;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    const v5, 0x3f333333    # 0.7f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$9;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$9;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    const-string v3, "&click_skip=true"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "landingByBrowser url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    const-string v3, "&click_skip=false"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j:Ljava/lang/String;

    const-string v1, "ptid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    const-string v1, "landscapeImageURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    const-string v1, "clickAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Ljava/lang/String;

    const-string v1, "iconImageURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Ljava/lang/String;

    const-string v1, "campaignName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Ljava/lang/String;

    const-string v1, "redirectURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const-string v1, "videoURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    const-string v1, "ADType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t:I

    const-string v1, "fromVideoAPI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->J:Z

    const-string v1, "rewardName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->I:Ljava/lang/String;

    const-string v1, "fromClickAPI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    const-string v1, "skipAllowSeconds"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    const-string v1, "videoImpressionURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Ljava/lang/String;

    const-string v1, "moreClickReportURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s:Ljava/lang/String;

    const-string v1, "PartiTypeCode"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    const-string v1, "campaignCondition"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_7

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    :cond_6
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "partiType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VIDEO_AD_VC_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_8
    :try_start_1
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "partiType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VIDEO_AD_CLICK_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "partiType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VIDEO_AD_WEB_CPA_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:I

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    return-void
.end method

.method private c()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    return-void
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Z:Z

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->B:Lcom/igaworks/adpopcorn/cores/c/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/activity/c/d;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    return-object v0
.end method

.method private f()V
    .locals 6

    const/16 v2, 0x400

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :try_start_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "landscape_sensor"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, -0x1

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/c/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->G:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    const-string v1, "igaworks/adpopcorn/res/logo_adpopcorn_video.png"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v6}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k()V

    return-void
.end method

.method static synthetic g(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p()V

    return-void
.end method

.method static synthetic h(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private h()V
    .locals 12

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4046000000000000L    # 44.0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v2, 0x405fc00000000000L    # 127.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v8

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic i(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:I

    return v0
.end method

.method private i()V
    .locals 14

    const/4 v6, -0x1

    const-wide/high16 v12, 0x4046000000000000L    # 44.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    new-instance v5, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$10;

    invoke-direct {v5, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$10;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v10

    double-to-int v2, v4

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v4, v12

    double-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v12

    double-to-int v4, v4

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v6, v12

    double-to-int v5, v6

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v4, "igaworks/adpopcorn/res/ic_close_video.png"

    iget-object v5, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Landroid/widget/ImageView;

    invoke-static {v2, v4, v5, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Landroid/widget/ImageView;

    new-instance v3, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$11;

    invoke-direct {v3, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$11;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private j()V
    .locals 10

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v1, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n:Ljava/lang/String;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    new-instance v5, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$12;

    invoke-direct {v5, p0, v2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$12;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Landroid/widget/ImageView;)V

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :cond_0
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    iget-wide v8, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v8

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/ic_close.png"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$13;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$13;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/igaworks/adpopcorn/activity/c/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/activity/c/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->buildRatingBarDrawables()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    const-wide/high16 v2, 0x403c000000000000L    # 28.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->n()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide v2, 0x404c800000000000L    # 57.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    new-instance v5, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$14;

    invoke-direct {v5, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$14;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->l()V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    return v0
.end method

.method static synthetic k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$15;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$16;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method static synthetic l(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    return v0
.end method

.method private l()V
    .locals 12

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/16 v7, 0x10

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v2, 0x4061800000000000L    # 140.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide v2, 0x4051800000000000L    # 70.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$2;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    const-string v1, "#ffe066"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    if-le v0, v9, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    const-wide v2, 0x4046800000000000L    # 45.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_7

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide v2, 0x4044800000000000L    # 41.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/btn_clamp_big.png"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v6}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    const-wide v2, 0x4052c00000000000L    # 75.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_5
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v8, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m()I

    move-result v2

    add-int/2addr v1, v2

    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->V:Landroid/widget/TextView;

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const-wide/high16 v2, 0x403d000000000000L    # 29.0

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "igaworks/adpopcorn/res/btn_clamp.png"

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->X:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v6}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->C:D

    mul-double/2addr v2, v10

    double-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_5
.end method

.method private m()I
    .locals 4

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    int-to-double v0, v0

    const-wide v2, 0x4086800000000000L    # 720.0

    div-double/2addr v0, v2

    const-wide v2, 0x4079500000000000L    # 405.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic m(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c()V

    return-void
.end method

.method private n()I
    .locals 4

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->S:I

    int-to-double v0, v0

    const-wide v2, 0x4086800000000000L    # 720.0

    div-double/2addr v0, v2

    const-wide v2, 0x4077800000000000L    # 376.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic n(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    return v0
.end method

.method private o()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "ApVideoAdActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLocalFileExist path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/d;->setVideoPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    const-string v2, "isLocalFileExist : FALSE"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    const-string v2, "checkPermission : FALSE"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/d;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic o(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    return v0
.end method

.method static synthetic p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$3;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    return-object v0
.end method

.method private q()V
    .locals 7

    const/16 v3, 0x1b

    const/4 v2, 0x3

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Z:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->M:Z

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    const-string v2, "clickLandingBtn VIDEO_AD_WEB_CPA_TYPE"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    if-ne v1, v2, :cond_5

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clickLandingBtn VIDEO_AD_VC_TYPE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clickLandingBtn VIDEO_AD_CLICK_TYPE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    const-string v2, "clickLandingBtn VIDEO_AD_WEB_CPA_TYPE"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    const-string v2, "clickLandingBtn VIDEO_AD_CLICK_TYPE sendRewardRequest"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c()V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/c/d;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    sub-int v1, v2, v1

    if-gtz v1, :cond_7

    :goto_1
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v2, Lcom/igaworks/adpopcorn/cores/common/f;->bX:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    const/16 v6, 0x50

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/igaworks/adpopcorn/activity/c/b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/igaworks/adpopcorn/activity/c/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v2, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aW:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->D:D

    const/16 v6, 0x50

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/adpopcorn/activity/c/b;->a(Ljava/lang/String;IDI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private r()V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ap:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v8, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aq:Ljava/lang/String;

    const-string v0, ""

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ao:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    const v5, 0x3f333333    # 0.7f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$4;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$4;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    new-instance v9, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$5;

    invoke-direct {v9, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$5;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->an:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic r(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q()V

    return-void
.end method

.method static synthetic s(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->N:I

    return v0
.end method

.method private s()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic t(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    return-void
.end method

.method static synthetic u(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->h()V

    return-void
.end method

.method static synthetic v(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic w(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->L:Z

    return v0
.end method


# virtual methods
.method public buildRatingBarDrawables()Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x3

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    new-array v3, v8, [Landroid/graphics/drawable/Drawable;

    move v1, v0

    :goto_0
    if-lt v1, v8, :cond_0

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-lt v0, v8, :cond_4

    return-object v1

    :cond_0
    if-nez v1, :cond_2

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v4, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v3, v1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, v9, :cond_3

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v4, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v3, v1

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v6

    const-string v7, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v6, v7}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v4, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v3, v1

    goto :goto_2

    :cond_4
    aget v3, v2, v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->ab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->O:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->r()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c:Landroid/content/Context;

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Z

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->Z:Z

    iput-boolean v4, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->R:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "landscapeMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v0, "app_restart"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Z

    :cond_0
    invoke-static {}, Lcom/igaworks/adpopcorn/cores/b;->a()Lcom/igaworks/adpopcorn/cores/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    const-string v2, "adpopcorn_sdk_flag"

    const-string v3, "use_flag_show_When_locked_sp"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b()V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->P:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d()V

    :goto_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/d;->stopPlayback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    :cond_1
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:Lcom/igaworks/adpopcorn/cores/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->i()V

    :cond_2
    return-void
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/d;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->v:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:Lcom/igaworks/adpopcorn/cores/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->x:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->t()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v3, v0, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v4, v0, Lcom/igaworks/adpopcorn/cores/common/f;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->w:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v6, v0, Lcom/igaworks/adpopcorn/cores/common/f;->j:Ljava/lang/String;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    const v5, 0x3f333333    # 0.7f

    new-instance v7, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$1;

    invoke-direct {v7, p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$1;-><init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->z:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->H:Lcom/igaworks/adpopcorn/cores/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Z)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/d;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->E:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->d:Lcom/igaworks/adpopcorn/activity/c/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/d;->start()V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_restart"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showProgressDialog(Z)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->s()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/d$b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0, p1}, Lcom/igaworks/adpopcorn/activity/b/d$b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->A:Lcom/igaworks/adpopcorn/activity/b/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
