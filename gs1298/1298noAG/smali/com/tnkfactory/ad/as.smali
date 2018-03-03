.class Lcom/tnkfactory/ad/as;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;

.field private b:Landroid/os/Handler;

.field private c:Lcom/tnkfactory/ad/AdItem;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/ah;Lcom/tnkfactory/ad/AdItem;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/as;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/as;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tnkfactory/ad/as;->c:Lcom/tnkfactory/ad/AdItem;

    iput-object p2, p0, Lcom/tnkfactory/ad/as;->c:Lcom/tnkfactory/ad/AdItem;

    iput-object p3, p0, Lcom/tnkfactory/ad/as;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/as;->a:Lcom/tnkfactory/ad/ah;

    iget-object v1, p0, Lcom/tnkfactory/ad/as;->c:Lcom/tnkfactory/ad/AdItem;

    iget-object v2, p0, Lcom/tnkfactory/ad/as;->a:Lcom/tnkfactory/ad/ah;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/ah;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/AdItem;->loadFeaturedImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ah;->a(Lcom/tnkfactory/ad/ah;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tnkfactory/ad/as;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
