.class Lcom/tnkfactory/ad/el;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/BannerAdItem;

.field final synthetic b:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/BannerAdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/el;->b:Lcom/tnkfactory/ad/ei;

    iput-object p2, p0, Lcom/tnkfactory/ad/el;->a:Lcom/tnkfactory/ad/BannerAdItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/el;->a:Lcom/tnkfactory/ad/BannerAdItem;

    iget-object v1, p0, Lcom/tnkfactory/ad/el;->b:Lcom/tnkfactory/ad/ei;

    invoke-static {v1}, Lcom/tnkfactory/ad/ei;->i(Lcom/tnkfactory/ad/ei;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/BannerAdItem;->sendImpression(Landroid/content/Context;)V

    return-void
.end method
