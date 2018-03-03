.class Lcom/igaworks/adpopcorn/activity/b/c$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/c$11;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/c$11;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    iput p2, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->b:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->dismiss()V

    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->f(Lcom/igaworks/adpopcorn/activity/b/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->a:Lcom/igaworks/adpopcorn/activity/b/c$11;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c$11;->a(Lcom/igaworks/adpopcorn/activity/b/c$11;)Lcom/igaworks/adpopcorn/activity/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->h(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v1

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->P:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/activity/b/c$11$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adpopcorn/activity/b/c;->a(Lcom/igaworks/adpopcorn/activity/b/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
