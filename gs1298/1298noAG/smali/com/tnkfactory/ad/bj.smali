.class Lcom/tnkfactory/ad/bj;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/bj;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    add-int/lit8 v0, p1, 0x19

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x28

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x31

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    sget-object v2, Lcom/tnkfactory/ad/bb;->a:[B

    invoke-static {p0, v2}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    sget-object v2, Lcom/tnkfactory/ad/bb;->b:[B

    invoke-static {p0, v2}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/16 v2, 0x17

    const/16 v3, 0x15

    invoke-static {}, Lcom/tnkfactory/ad/bj;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    const/4 v4, 0x1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x19

    move-object v0, p0

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p1}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-static {p0, p2}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    invoke-static {p0, p1}, Lcom/tnkfactory/ad/bj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->aj:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->ak:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->an:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->am:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, -0xff4ccd

    goto :goto_0

    :pswitch_1
    const v0, -0x37e00

    goto :goto_0

    :pswitch_2
    const v0, -0xee7c13

    goto :goto_0

    :pswitch_3
    const v0, -0x757576

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/bj;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    const/16 v3, 0x15

    const/4 v4, 0x3

    const/16 v5, 0x17

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/16 v2, 0x9

    invoke-static {p1}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v4, 0x2d

    const/16 v5, 0x5b

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x24

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x1

    invoke-static {}, Lcom/tnkfactory/ad/bj;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    const/16 v3, 0x18

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x15

    const/4 v4, 0x5

    const/16 v5, 0x17

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x1f

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/bj;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/bj;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static d(I)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/16 v3, 0x12

    const/4 v0, 0x1

    invoke-static {}, Lcom/tnkfactory/ad/bj;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v0, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0xc

    const/16 v4, 0xf

    const/16 v5, 0x16

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/bj;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x30

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/bj;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static e(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/tnkfactory/ad/bj;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/tnkfactory/ad/bj;->f(I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/tnkfactory/ad/bj;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/bj;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    const/16 v3, 0x12

    const/4 v4, 0x3

    const/16 v5, 0x16

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-static {p1}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x23

    const/16 v3, 0x1e

    const/16 v4, 0x25

    const/16 v5, 0x22

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/16 v3, 0x12

    const/4 v2, 0x1

    invoke-static {}, Lcom/tnkfactory/ad/bj;->k()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x7

    const/16 v5, 0x16

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-static {p1}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0x1e

    const/4 v4, 0x4

    const/16 v5, 0x22

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tnkfactory/ad/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(I)[B
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/tnkfactory/ad/ba;->a:[B

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tnkfactory/ad/ba;->c:[B

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tnkfactory/ad/ba;->b:[B

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tnkfactory/ad/ba;->d:[B

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tnkfactory/ad/bi;->a:[B

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/tnkfactory/ad/bf;->a:[B

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/tnkfactory/ad/bh;->a:[B

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/tnkfactory/ad/bd;->a:[B

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/tnkfactory/ad/bd;->c:[B

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/tnkfactory/ad/bd;->b:[B

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/tnkfactory/ad/ax;->a:[B

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/tnkfactory/ad/ay;->a:[B

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/tnkfactory/ad/az;->a:[B

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/tnkfactory/ad/ax;->b:[B

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/tnkfactory/ad/ay;->b:[B

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/tnkfactory/ad/az;->b:[B

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/tnkfactory/ad/bg;->a:[B

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/tnkfactory/ad/dc;->a:[B

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/tnkfactory/ad/de;->a:[B

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/tnkfactory/ad/dg;->a:[B

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/tnkfactory/ad/df;->a:[B

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/tnkfactory/ad/dh;->a:[B

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/tnkfactory/ad/dn;->a:[B

    goto :goto_0

    :pswitch_18
    sget-object v0, Lcom/tnkfactory/ad/dn;->b:[B

    goto :goto_0

    :pswitch_19
    sget-object v0, Lcom/tnkfactory/ad/dn;->c:[B

    goto :goto_0

    :pswitch_1a
    sget-object v0, Lcom/tnkfactory/ad/do;->a:[B

    goto :goto_0

    :pswitch_1b
    sget-object v0, Lcom/tnkfactory/ad/do;->b:[B

    goto :goto_0

    :pswitch_1c
    sget-object v0, Lcom/tnkfactory/ad/do;->c:[B

    goto :goto_0

    :pswitch_1d
    sget-object v0, Lcom/tnkfactory/ad/dp;->b:[B

    goto :goto_0

    :pswitch_1e
    sget-object v0, Lcom/tnkfactory/ad/dp;->a:[B

    goto :goto_0

    :pswitch_1f
    sget-object v0, Lcom/tnkfactory/ad/dq;->a:[B

    goto :goto_0

    :pswitch_20
    sget-object v0, Lcom/tnkfactory/ad/dm;->a:[B

    goto :goto_0

    :pswitch_21
    sget-object v0, Lcom/tnkfactory/ad/dm;->b:[B

    goto :goto_0

    :pswitch_22
    sget-object v0, Lcom/tnkfactory/ad/dn;->a:[B

    goto :goto_0

    :pswitch_23
    sget-object v0, Lcom/tnkfactory/ad/di;->a:[B

    goto :goto_0

    :pswitch_24
    sget-object v0, Lcom/tnkfactory/ad/di;->b:[B

    goto :goto_0

    :pswitch_25
    sget-object v0, Lcom/tnkfactory/ad/dj;->a:[B

    goto :goto_0

    :pswitch_26
    sget-object v0, Lcom/tnkfactory/ad/dj;->b:[B

    goto :goto_0

    :pswitch_27
    sget-object v0, Lcom/tnkfactory/ad/dj;->c:[B

    goto :goto_0

    :pswitch_28
    sget-object v0, Lcom/tnkfactory/ad/dl;->a:[B

    goto :goto_0

    :pswitch_29
    sget-object v0, Lcom/tnkfactory/ad/dk;->b:[B

    goto :goto_0

    :pswitch_2a
    sget-object v0, Lcom/tnkfactory/ad/dk;->a:[B

    goto :goto_0

    :pswitch_2b
    sget-object v0, Lcom/tnkfactory/ad/dd;->a:[B

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method private static g()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static h()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static i()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static j()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static k()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tnkfactory/ad/bj;->e(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
