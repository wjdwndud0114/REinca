.class Lcom/tnkfactory/ad/fe;
.super Lcom/tnkfactory/ad/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/h;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, p5}, Lcom/tnkfactory/ad/fe;->setId(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;III)Lcom/tnkfactory/ad/fe;
    .locals 7

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/fe;

    const/16 v5, 0x63

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/fe;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/fe;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/ff;

    invoke-direct {v1}, Lcom/tnkfactory/ad/ff;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fe;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fe;->a(II)V

    return-object v0
.end method
