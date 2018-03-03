.class Lcom/igaworks/adpopcorn/activity/b/d$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->e(Lcom/igaworks/adpopcorn/activity/b/d$c;)Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0, p3}, Lcom/igaworks/adpopcorn/activity/b/d$c;->a(Lcom/igaworks/adpopcorn/activity/b/d$c;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->e(Lcom/igaworks/adpopcorn/activity/b/d$c;)Lcom/igaworks/adpopcorn/activity/b/d$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c$a;->notifyDataSetInvalidated()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->f(Lcom/igaworks/adpopcorn/activity/b/d$c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$c$2;->a:Lcom/igaworks/adpopcorn/activity/b/d$c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->f(Lcom/igaworks/adpopcorn/activity/b/d$c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method
