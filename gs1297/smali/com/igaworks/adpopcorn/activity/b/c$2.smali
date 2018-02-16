.class Lcom/igaworks/adpopcorn/activity/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c;->h()V
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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0, p3}, Lcom/igaworks/adpopcorn/activity/b/c;->d(Lcom/igaworks/adpopcorn/activity/b/c;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->x(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->y(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->bR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->v(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$c;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->y(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$2;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->w(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
