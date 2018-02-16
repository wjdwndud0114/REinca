.class public Lcom/tnkfactory/ad/q;
.super Lcom/tnkfactory/ad/cy;


# instance fields
.field public a:Lcom/tnkfactory/ad/InterstitialAdItem;

.field final synthetic b:Lcom/tnkfactory/ad/p;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/p;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/q;->b:Lcom/tnkfactory/ad/p;

    invoke-direct {p0, p2}, Lcom/tnkfactory/ad/cy;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/q;->a:Lcom/tnkfactory/ad/InterstitialAdItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/q;->b:Lcom/tnkfactory/ad/p;

    iget-object v0, v0, Lcom/tnkfactory/ad/p;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/cz;->c(Lcom/tnkfactory/ad/cy;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/q;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    return-void
.end method
