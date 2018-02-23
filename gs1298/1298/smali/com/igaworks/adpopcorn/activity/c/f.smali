.class public Lcom/igaworks/adpopcorn/activity/c/f;
.super Landroid/widget/ImageView;


# static fields
.field public static final a:Landroid/graphics/Shader$TileMode;

.field static final synthetic b:Z

.field private static final c:[Landroid/widget/ImageView$ScaleType;

.field private static synthetic o:[I


# instance fields
.field private d:F

.field private e:F

.field private f:Landroid/content/res/ColorStateList;

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/Shader$TileMode;

.field private j:Landroid/graphics/Shader$TileMode;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/igaworks/adpopcorn/activity/c/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/igaworks/adpopcorn/activity/c/f;->b:Z

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->a:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->c:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->d:F

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->e:F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->f:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->g:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->h:Z

    sget-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->a:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->i:Landroid/graphics/Shader$TileMode;

    sget-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->a:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->j:Landroid/graphics/Shader$TileMode;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/c/f;->d:F

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/igaworks/adpopcorn/activity/c/e;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/igaworks/adpopcorn/activity/c/e;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->n:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/widget/ImageView$ScaleType;)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->d:F

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(F)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->e:F

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->b(F)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/content/res/ColorStateList;)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->g:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Z)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->i:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/Shader$TileMode;)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->j:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/c/e;->b(Landroid/graphics/Shader$TileMode;)Lcom/igaworks/adpopcorn/activity/c/e;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/activity/c/f;->a(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->h:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->m:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/f;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/igaworks/adpopcorn/activity/c/f;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    if-eqz v2, :cond_1

    :try_start_0
    iget v2, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    goto :goto_1
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/f;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->invalidate()V

    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->n:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/igaworks/adpopcorn/activity/c/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->m:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/f;->a(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->m:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    invoke-static {p1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/Bitmap;)Lcom/igaworks/adpopcorn/activity/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->c()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    invoke-static {p1}, Lcom/igaworks/adpopcorn/activity/c/e;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->c()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->k:I

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->c()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/f;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    sget-boolean v0, Lcom/igaworks/adpopcorn/activity/c/f;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/f;->n:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/f;->n:Landroid/widget/ImageView$ScaleType;

    invoke-static {}, Lcom/igaworks/adpopcorn/activity/c/f;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/f;->a(Z)V

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/f;->invalidate()V

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
