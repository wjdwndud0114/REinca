.class Lcom/igaworks/adpopcorn/activity/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/common/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/b;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/b;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/b;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/b$2;->a:Lcom/igaworks/adpopcorn/activity/b/b;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/b/b$2;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/b$2;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/b$2;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/igaworks/adpopcorn/style/a;->a()Lcom/igaworks/adpopcorn/style/a;

    move-result-object v1

    const-string v2, "OFFERWALL_THEME_COLOR"

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/style/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
