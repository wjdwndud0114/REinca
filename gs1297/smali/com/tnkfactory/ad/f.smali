.class Lcom/tnkfactory/ad/f;
.super Landroid/widget/FrameLayout;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/c;

.field private b:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/c;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/f;->a:Lcom/tnkfactory/ad/c;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/f;->b:Landroid/view/WindowManager;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tnkfactory/ad/f;->b:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/f;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x10500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/f;->b:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/f;->addView(Landroid/view/View;)V

    return-void
.end method
