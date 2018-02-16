.class public Lcom/igaworks/adpopcorn/activity/c/a;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/a;->b:Landroid/content/Context;

    const-string v0, "igaworks/adpopcorn/res/btn_check_normal.png"

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v0

    const-string v1, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/style/a;->a(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/c/a;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/a;->b:Landroid/content/Context;

    const-string v1, "igaworks/adpopcorn/res/btn_check_select.png"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/igaworks/adpopcorn/cores/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/graphics/Bitmap;

    :goto_0
    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/activity/c/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/a;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
