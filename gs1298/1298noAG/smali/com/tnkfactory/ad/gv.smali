.class Lcom/tnkfactory/ad/gv;
.super Lcom/tnkfactory/ad/h;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/h;-><init>(Landroid/content/Context;III)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/gv;->k:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/tnkfactory/ad/gv;->setId(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;III)Lcom/tnkfactory/ad/gv;
    .locals 7

    const/4 v0, -0x1

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/tnkfactory/ad/gv;

    const/16 v5, 0x63

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/gv;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {v0, v6}, Lcom/tnkfactory/ad/gv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/tnkfactory/ad/gw;

    invoke-direct {v1}, Lcom/tnkfactory/ad/gw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/gv;->a(II)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gv;->k:Ljava/lang/String;

    return-void
.end method

.method protected e()V
    .locals 3

    invoke-super {p0}, Lcom/tnkfactory/ad/h;->e()V

    iget-object v0, p0, Lcom/tnkfactory/ad/gv;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/gv;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
