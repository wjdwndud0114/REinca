.class Lcom/tnkfactory/ad/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/tnkfactory/ad/j;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/j;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iput-object p2, p0, Lcom/tnkfactory/ad/n;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iget-object v0, v0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iget-object v1, v1, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iget-object v2, v2, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget v2, v2, Lcom/tnkfactory/ad/ImageAdItem;->K:I

    iget-object v3, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iget-object v3, v3, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget v3, v3, Lcom/tnkfactory/ad/ImageAdItem;->L:I

    iget-object v4, p0, Lcom/tnkfactory/ad/n;->b:Lcom/tnkfactory/ad/j;

    iget-object v4, v4, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v4, v4, Lcom/tnkfactory/ad/ImageAdItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/ImageAdItem;->a(Landroid/content/Context;IILjava/lang/String;)I

    iget-object v0, p0, Lcom/tnkfactory/ad/n;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
