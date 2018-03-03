.class Lcom/igaworks/adpopcorn/activity/c/c$b;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/c/c;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/activity/c/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/c$b;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$b;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/igaworks/adpopcorn/activity/c/c$b;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/activity/c/c$b;->offsetLeftAndRight(I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$b;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c$b;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/c/c;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c$b;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/activity/c/c;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
