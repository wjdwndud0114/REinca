.class Lcom/tnkfactory/ad/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/ah;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v1}, Lcom/tnkfactory/ad/ah;->c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v2}, Lcom/tnkfactory/ad/ah;->c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tnkfactory/ad/AdItem;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v1}, Lcom/tnkfactory/ad/ah;->c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tnkfactory/ad/AdItem;->getAppPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ah;->removeFromParent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app launch error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->ag:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdItem;->getActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ar;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->j(Lcom/tnkfactory/ad/ah;)V

    goto :goto_0
.end method
