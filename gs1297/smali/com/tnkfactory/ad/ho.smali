.class Lcom/tnkfactory/ad/ho;
.super Lcom/tnkfactory/ad/hn;


# instance fields
.field protected f:Lcom/tnkfactory/ad/hw;

.field final synthetic g:Lcom/tnkfactory/ad/hl;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hl;Landroid/content/Context;ZLcom/tnkfactory/ad/hw;Lcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/ho;->g:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/tnkfactory/ad/hn;-><init>(Lcom/tnkfactory/ad/hl;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/ho;->f:Lcom/tnkfactory/ad/hw;

    iput-object p4, p0, Lcom/tnkfactory/ad/ho;->f:Lcom/tnkfactory/ad/hw;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/hn;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ho;->f:Lcom/tnkfactory/ad/hw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/ho;->f:Lcom/tnkfactory/ad/hw;

    iget-object v2, p0, Lcom/tnkfactory/ad/ho;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/tnkfactory/ad/hw;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
