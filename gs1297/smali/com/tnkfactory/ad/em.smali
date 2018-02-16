.class Lcom/tnkfactory/ad/em;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0, v6}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->j(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    iget-object v1, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v1}, Lcom/tnkfactory/ad/ei;->j(Lcom/tnkfactory/ad/ei;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ei;->c(Lcom/tnkfactory/ad/ei;J)J

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v6, v0, v1}, Lcom/tnkfactory/ad/em;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->k(Lcom/tnkfactory/ad/ei;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->l(Lcom/tnkfactory/ad/ei;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
