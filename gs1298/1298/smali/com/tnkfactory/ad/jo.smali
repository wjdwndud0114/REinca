.class Lcom/tnkfactory/ad/jo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jn;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jn;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/jo;->a:Lcom/tnkfactory/ad/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/jo;->a:Lcom/tnkfactory/ad/jn;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jn;->getMediaView()Lcom/tnkfactory/ad/fu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fu;->getPlayTimeLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tnkfactory/ad/jo;->a:Lcom/tnkfactory/ad/jn;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/jn;->a(Lcom/tnkfactory/ad/jn;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/jo;->a:Lcom/tnkfactory/ad/jn;

    invoke-static {v0}, Lcom/tnkfactory/ad/jn;->a(Lcom/tnkfactory/ad/jn;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
