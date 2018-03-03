.class public Lcom/igaworks/adpopcorn/cores/common/c;
.super Ljava/lang/Object;


# static fields
.field private static a:D

.field private static b:D

.field private static c:D

.field private static d:D

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    sput-wide v2, Lcom/igaworks/adpopcorn/cores/common/c;->a:D

    sput-wide v2, Lcom/igaworks/adpopcorn/cores/common/c;->b:D

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    sput v4, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    sput v4, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    return-void
.end method

.method public static a()D
    .locals 2

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->a:D

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Float;)F
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 8

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    const-wide v4, 0x4086800000000000L    # 720.0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->a:D

    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->b:D

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->a:D

    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->b:D

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 8

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    const-wide v4, 0x4086800000000000L    # 720.0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    int-to-double v0, p1

    div-double/2addr v0, v4

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/igaworks/adpopcorn/cores/common/c;->e:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    goto :goto_0

    :cond_1
    int-to-double v0, p1

    div-double/2addr v0, v6

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    sget v0, Lcom/igaworks/adpopcorn/cores/common/c;->f:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    goto :goto_1
.end method

.method public static b()D
    .locals 2

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->b:D

    return-wide v0
.end method

.method public static c()D
    .locals 4

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->a:D

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    goto :goto_0
.end method

.method public static d()D
    .locals 4

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->b:D

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->c:D

    sput-wide v0, Lcom/igaworks/adpopcorn/cores/common/c;->d:D

    return-void
.end method
