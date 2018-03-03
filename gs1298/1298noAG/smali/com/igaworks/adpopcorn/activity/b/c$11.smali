.class Lcom/igaworks/adpopcorn/activity/b/c$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/c;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0, p3}, Lcom/igaworks/adpopcorn/activity/b/c;->b(Lcom/igaworks/adpopcorn/activity/b/c;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->s(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->s(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->q(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->q(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->c(Lcom/igaworks/adpopcorn/activity/b/c;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->v(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->t(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/a;->c()I

    move-result v8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->t(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/a;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->c(Lcom/igaworks/adpopcorn/activity/b/c;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/c;->c(Lcom/igaworks/adpopcorn/activity/b/c;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-eq v8, v0, :cond_5

    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    :cond_5
    iget-object v10, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    new-instance v0, Lcom/igaworks/adpopcorn/activity/b/d$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->f(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/activity/b/c;->d(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v3

    iget-object v3, v3, Lcom/igaworks/adpopcorn/cores/common/f;->al:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v4}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v4

    iget-object v4, v4, Lcom/igaworks/adpopcorn/cores/common/f;->bS:Ljava/lang/String;

    const v5, 0x3f59999a    # 0.85f

    iget-object v6, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v6}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v6

    iget-object v6, v6, Lcom/igaworks/adpopcorn/cores/common/f;->L:Ljava/lang/String;

    new-instance v7, Lcom/igaworks/adpopcorn/activity/b/c$11$1;

    invoke-direct {v7, p0, v8, v9}, Lcom/igaworks/adpopcorn/activity/b/c$11$1;-><init>(Lcom/igaworks/adpopcorn/activity/b/c$11;ILjava/lang/String;)V

    iget-object v8, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v8}, Lcom/igaworks/adpopcorn/activity/b/c;->g(Lcom/igaworks/adpopcorn/activity/b/c;)Z

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/igaworks/adpopcorn/activity/b/d$a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;FLjava/lang/String;Landroid/view/View$OnClickListener;ZZ)V

    invoke-static {v10, v0}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;Lcom/igaworks/adpopcorn/activity/b/d$a;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/b/d$a;->setCancelable(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->show()V

    goto/16 :goto_0
.end method
