.class Lcom/tnkfactory/ad/gf;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/tnkfactory/ad/NativeAdItem;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/NativeAdItem;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    iput-object p2, p0, Lcom/tnkfactory/ad/gf;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v1}, Lcom/tnkfactory/ad/NativeAdItem;->g(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    iget v2, v2, Lcom/tnkfactory/ad/NativeAdItem;->K:I

    iget-object v3, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    iget v3, v3, Lcom/tnkfactory/ad/NativeAdItem;->L:I

    iget-object v4, p0, Lcom/tnkfactory/ad/gf;->b:Lcom/tnkfactory/ad/NativeAdItem;

    iget-object v4, v4, Lcom/tnkfactory/ad/NativeAdItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/NativeAdItem;->a(Landroid/content/Context;IILjava/lang/String;)I

    iget-object v0, p0, Lcom/tnkfactory/ad/gf;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
