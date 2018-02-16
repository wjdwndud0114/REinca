.class Lcom/tnkfactory/ad/bw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdItem;

.field final synthetic b:Lcom/tnkfactory/ad/AdListView;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;Lcom/tnkfactory/ad/AdItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    iput-object p2, p0, Lcom/tnkfactory/ad/bw;->a:Lcom/tnkfactory/ad/AdItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdListView;->k(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/TnkAdDetailLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdListView;->k(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/TnkAdDetailLayout;

    move-result-object v1

    iget v1, v1, Lcom/tnkfactory/ad/TnkAdDetailLayout;->layout:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->k(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/TnkAdDetailLayout;

    move-result-object v0

    iget v0, v0, Lcom/tnkfactory/ad/TnkAdDetailLayout;->imgType:I

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/bw;->a:Lcom/tnkfactory/ad/AdItem;

    iget-object v2, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    iget-object v2, v2, Lcom/tnkfactory/ad/AdListView;->i:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/tnkfactory/ad/AdItem;->requestInfo(Landroid/content/Context;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->l(Lcom/tnkfactory/ad/AdListView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "aditem"

    iget-object v3, p0, Lcom/tnkfactory/ad/bw;->a:Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/bw;->b:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdListView;->l(Lcom/tnkfactory/ad/AdListView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
