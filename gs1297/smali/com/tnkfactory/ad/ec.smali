.class Lcom/tnkfactory/ad/ec;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ds;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/ds;Lcom/tnkfactory/ad/dt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ec;-><init>(Lcom/tnkfactory/ad/ds;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;J)J

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->d()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ds;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->c()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;J)J

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->d()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceivedError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ec;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {v0, p2}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
