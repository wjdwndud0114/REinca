.class public Lcom/igaworks/adpopcorn/activity/c/d;
.super Landroid/widget/VideoView;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->c:Z

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/c/d;->a:I

    iput p3, p0, Lcom/igaworks/adpopcorn/activity/c/d;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->c:Z

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->c:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/c/d;->a:I

    iget v1, p0, Lcom/igaworks/adpopcorn/activity/c/d;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adpopcorn/activity/c/d;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/igaworks/adpopcorn/activity/c/d;->setMeasuredDimension(II)V

    goto :goto_0
.end method
