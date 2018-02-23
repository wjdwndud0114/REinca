.class Lcom/tnkfactory/ad/en;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/en;->a:Lcom/tnkfactory/ad/ei;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tnkfactory/ad/en;->a:Lcom/tnkfactory/ad/ei;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ei;->a(Lcom/tnkfactory/ad/ei;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/en;->a:Lcom/tnkfactory/ad/ei;

    invoke-static {v0}, Lcom/tnkfactory/ad/ei;->m(Lcom/tnkfactory/ad/ei;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
