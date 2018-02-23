.class Lcom/tnkfactory/ad/am;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/am;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/am;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->c(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/am;->a:Lcom/tnkfactory/ad/ah;

    iget-object v1, v1, Lcom/tnkfactory/ad/ah;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdItem;->requestJoin(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/tnkfactory/ad/am;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->d(Lcom/tnkfactory/ad/ah;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
