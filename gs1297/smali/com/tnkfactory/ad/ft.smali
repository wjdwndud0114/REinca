.class public Lcom/tnkfactory/ad/ft;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;
    .locals 1

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;
    .locals 1

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ListView;
    .locals 1

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/GridView;
    .locals 1

    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ProgressBar;
    .locals 3

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010287

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/webkit/WebView;
    .locals 1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Lcom/tnkfactory/ad/fu;
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/fu;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/fu;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;
    .locals 1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static k(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/LinearLayout;
    .locals 1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method

.method public static l(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/tnkfactory/ad/ft;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    return-object v0
.end method
