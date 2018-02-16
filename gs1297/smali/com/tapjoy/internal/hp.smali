.class public final Lcom/tapjoy/internal/hp;
.super Lcom/tapjoy/internal/an;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tapjoy/internal/gu;

.field private final b:Lcom/tapjoy/internal/hq;

.field private c:Lcom/tapjoy/internal/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gu;Lcom/tapjoy/internal/hq;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/an;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/tapjoy/internal/hp;->a:Lcom/tapjoy/internal/gu;

    .line 28
    iput-object p3, p0, Lcom/tapjoy/internal/hp;->b:Lcom/tapjoy/internal/hq;

    .line 29
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Lcom/tapjoy/internal/hp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/af;

    .line 33
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    .line 1044
    invoke-virtual {p0}, Lcom/tapjoy/internal/hp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/af;->a(Landroid/content/Context;)Lcom/tapjoy/internal/af;

    move-result-object v1

    .line 1045
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->a:Lcom/tapjoy/internal/gu;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gu;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1046
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->a:Lcom/tapjoy/internal/gu;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gu;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1047
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    .line 1056
    :goto_0
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    .line 1084
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/af;

    if-eq v1, v0, :cond_0

    .line 1085
    iput-object v0, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/af;

    .line 1086
    iget-object v0, p0, Lcom/tapjoy/internal/hp;->b:Lcom/tapjoy/internal/hq;

    iget-object v1, p0, Lcom/tapjoy/internal/hp;->c:Lcom/tapjoy/internal/af;

    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hq;->setLandscape(Z)V

    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/an;->onMeasure(II)V

    .line 39
    return-void

    .line 1049
    :cond_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    invoke-virtual {p0}, Lcom/tapjoy/internal/hp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/af;->b(Landroid/content/Context;)Lcom/tapjoy/internal/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/af;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    goto :goto_0

    .line 1054
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    goto :goto_0

    .line 1058
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    .line 1059
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1060
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->c()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1062
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1

    .line 1064
    :cond_4
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1

    .line 1067
    :cond_5
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1

    .line 1071
    :cond_6
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    .line 1072
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1073
    invoke-virtual {v1}, Lcom/tapjoy/internal/af;->c()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 1075
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1

    .line 1077
    :cond_7
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1

    .line 1080
    :cond_8
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/hp;->setRotationCount(I)V

    goto :goto_1
.end method
