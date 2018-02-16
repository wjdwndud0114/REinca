.class Lcom/tnkfactory/ad/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/j;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/k;->a:Lcom/tnkfactory/ad/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/k;->a:Lcom/tnkfactory/ad/j;

    iget-object v0, v0, Lcom/tnkfactory/ad/j;->g:Lcom/tnkfactory/ad/ImageAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/k;->a:Lcom/tnkfactory/ad/j;

    iget-object v1, v1, Lcom/tnkfactory/ad/j;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ImageAdItem;->sendImpression(Landroid/content/Context;)V

    return-void
.end method
