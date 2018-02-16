.class Lcom/tnkfactory/ad/je;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jd;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jd;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v0}, Lcom/tnkfactory/ad/jd;->a(Lcom/tnkfactory/ad/jd;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v0}, Lcom/tnkfactory/ad/jd;->b(Lcom/tnkfactory/ad/jd;)Lcom/tnkfactory/ad/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v0}, Lcom/tnkfactory/ad/jd;->c(Lcom/tnkfactory/ad/jd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v0}, Lcom/tnkfactory/ad/jd;->b(Lcom/tnkfactory/ad/jd;)Lcom/tnkfactory/ad/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v1}, Lcom/tnkfactory/ad/jd;->d(Lcom/tnkfactory/ad/jd;)Lcom/tnkfactory/ad/InterstitialAdItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/cm;->b(Lcom/tnkfactory/ad/ImageAdItem;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/je;->a:Lcom/tnkfactory/ad/jd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/jd;->a(Lcom/tnkfactory/ad/jd;Z)Z

    return-void
.end method
