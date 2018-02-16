.class Lcom/igaworks/adpopcorn/activity/b/d$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/d$a;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/d$a;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/d$a;Landroid/widget/TextView;Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->c:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->b(Lcom/igaworks/adpopcorn/activity/b/d$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d$a;->c(Lcom/igaworks/adpopcorn/activity/b/d$a;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->c:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v4, 0x4082c00000000000L    # 600.0

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/d$a;->d(Lcom/igaworks/adpopcorn/activity/b/d$a;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const-wide v0, 0x407cc00000000000L    # 460.0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/d$a;->c(Lcom/igaworks/adpopcorn/activity/b/d$a;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method
