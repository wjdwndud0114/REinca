.class Lcom/tnkfactory/ad/iw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/iv;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/iv;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-static {v0}, Lcom/tnkfactory/ad/iv;->a(Lcom/tnkfactory/ad/iv;)Lcom/tnkfactory/ad/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-static {v0}, Lcom/tnkfactory/ad/iv;->b(Lcom/tnkfactory/ad/iv;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-static {v0}, Lcom/tnkfactory/ad/iv;->a(Lcom/tnkfactory/ad/iv;)Lcom/tnkfactory/ad/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-static {v1}, Lcom/tnkfactory/ad/iv;->c(Lcom/tnkfactory/ad/iv;)Lcom/tnkfactory/ad/VideoAdItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/cm;->b(Lcom/tnkfactory/ad/ImageAdItem;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/iv;->a(Lcom/tnkfactory/ad/iv;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/iw;->a:Lcom/tnkfactory/ad/iv;

    invoke-static {v0}, Lcom/tnkfactory/ad/iv;->d(Lcom/tnkfactory/ad/iv;)V

    return-void
.end method
