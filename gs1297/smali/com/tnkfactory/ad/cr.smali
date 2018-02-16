.class Lcom/tnkfactory/ad/cr;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdMediaActivity;

.field private b:Lcom/tnkfactory/ad/AdItem;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/AdItem;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/cr;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/cr;->b:Lcom/tnkfactory/ad/AdItem;

    iput-object p2, p0, Lcom/tnkfactory/ad/cr;->b:Lcom/tnkfactory/ad/AdItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/cr;->b:Lcom/tnkfactory/ad/AdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/cr;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdItem;->loadFeaturedImage(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cr;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdMediaActivity;->c(Lcom/tnkfactory/ad/AdMediaActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tnkfactory/ad/cs;

    invoke-direct {v2, p0, v0}, Lcom/tnkfactory/ad/cs;-><init>(Lcom/tnkfactory/ad/cr;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
