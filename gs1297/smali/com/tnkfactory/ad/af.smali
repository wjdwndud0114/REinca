.class Lcom/tnkfactory/ad/af;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/tnkfactory/ad/af;
    .locals 4

    sget v0, Lcom/tnkfactory/ad/u;->e:I

    sget v1, Lcom/tnkfactory/ad/u;->f:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    sget v1, Lcom/tnkfactory/ad/u;->d:I

    sget v2, Lcom/tnkfactory/ad/u;->g:I

    sub-int/2addr v1, v2

    sget v2, Lcom/tnkfactory/ad/u;->h:I

    sget v3, Lcom/tnkfactory/ad/u;->i:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/tnkfactory/ad/af;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/af;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/af;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
