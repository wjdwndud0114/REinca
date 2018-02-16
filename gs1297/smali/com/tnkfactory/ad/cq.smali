.class Lcom/tnkfactory/ad/cq;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ImageAdItem;

.field final synthetic b:Lcom/tnkfactory/ad/cn;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/cn;Lcom/tnkfactory/ad/ImageAdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cn;

    iput-object p2, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cn;

    iget-object v0, v0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->e(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cn;

    iget-object v1, v1, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    iget-object v2, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    iget-wide v2, v2, Lcom/tnkfactory/ad/ImageAdItem;->b:J

    iget-object v4, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/ImageAdItem;->getActionType()I

    move-result v4

    iget-object v5, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    iget v5, v5, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget-object v6, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    iget v6, v6, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v7, p0, Lcom/tnkfactory/ad/cq;->a:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v7, v7, Lcom/tnkfactory/ad/ImageAdItem;->M:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "tnkad"

    const-string v2, "MAVC"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
