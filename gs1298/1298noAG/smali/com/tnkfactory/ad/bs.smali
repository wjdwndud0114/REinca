.class Lcom/tnkfactory/ad/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdItem;

.field final synthetic b:Lcom/tnkfactory/ad/AdListView;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/bs;->b:Lcom/tnkfactory/ad/AdListView;

    iput-object p2, p0, Lcom/tnkfactory/ad/bs;->a:Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tnkfactory/ad/bs;->b:Lcom/tnkfactory/ad/AdListView;

    iget-object v2, v2, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/tnkfactory/ad/bs;->a:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v3}, Lcom/tnkfactory/ad/AdItem;->getAppPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tnkfactory/ad/in;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/tnkfactory/ad/bs;->b:Lcom/tnkfactory/ad/AdListView;

    iget-object v3, v3, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/bs;->b:Lcom/tnkfactory/ad/AdListView;

    iget-object v1, p0, Lcom/tnkfactory/ad/bs;->a:Lcom/tnkfactory/ad/AdItem;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/bs;->b:Lcom/tnkfactory/ad/AdListView;

    iget-object v0, v0, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/ha;->ah:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
