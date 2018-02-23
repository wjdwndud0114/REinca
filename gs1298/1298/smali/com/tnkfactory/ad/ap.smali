.class Lcom/tnkfactory/ad/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ap;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ap;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->f(Lcom/tnkfactory/ad/ah;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/ap;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v1}, Lcom/tnkfactory/ad/ah;->g(Lcom/tnkfactory/ad/ah;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tnkfactory/ad/ap;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v1}, Lcom/tnkfactory/ad/ah;->g(Lcom/tnkfactory/ad/ah;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
