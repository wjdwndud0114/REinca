.class Lcom/tnkfactory/ad/cl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdMediaActivity;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cl;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/cl;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->b(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cl;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdItem;->d(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/tnkfactory/ad/cl;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->c(Lcom/tnkfactory/ad/AdMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
