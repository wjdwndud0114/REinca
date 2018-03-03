.class Lcom/igaworks/adpopcorn/activity/b/d$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/d$c;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/d$c;

.field private final synthetic b:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/d$c;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide v4, 0x4082c00000000000L    # 600.0

    const-wide v6, 0x407ae00000000000L    # 430.0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->d(Lcom/igaworks/adpopcorn/activity/b/d$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d$c;->b(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->b:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d$c;->b(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a(Lcom/igaworks/adpopcorn/activity/b/d$c;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
