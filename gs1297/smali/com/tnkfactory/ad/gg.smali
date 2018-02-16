.class Lcom/tnkfactory/ad/gg;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/NativeAdItem;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gg;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gg;->a:Lcom/tnkfactory/ad/NativeAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/gg;->a:Lcom/tnkfactory/ad/NativeAdItem;

    invoke-static {v1}, Lcom/tnkfactory/ad/NativeAdItem;->g(Lcom/tnkfactory/ad/NativeAdItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/NativeAdItem;->sendImpression(Landroid/content/Context;)V

    return-void
.end method
