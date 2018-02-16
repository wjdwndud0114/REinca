.class Lcom/tnkfactory/ad/gc;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/fy;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gc;->a:Lcom/tnkfactory/ad/fy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/gc;->a:Lcom/tnkfactory/ad/fy;

    iget-object v1, p0, Lcom/tnkfactory/ad/gc;->a:Lcom/tnkfactory/ad/fy;

    iget-object v1, v1, Lcom/tnkfactory/ad/fy;->i:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/tnkfactory/ad/AdItemList;->getAdItemList(Landroid/content/Context;II)Lcom/tnkfactory/ad/AdItemList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/fy;->a(Lcom/tnkfactory/ad/fy;Lcom/tnkfactory/ad/AdItemList;)Lcom/tnkfactory/ad/AdItemList;

    iget-object v0, p0, Lcom/tnkfactory/ad/gc;->a:Lcom/tnkfactory/ad/fy;

    invoke-static {v0}, Lcom/tnkfactory/ad/fy;->b(Lcom/tnkfactory/ad/fy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
