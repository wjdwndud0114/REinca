.class Lcom/tnkfactory/ad/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/cm;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdMediaActivity;


# direct methods
.method private constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tnkfactory/ad/AdMediaActivity;Lcom/tnkfactory/ad/cj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/cu;-><init>(Lcom/tnkfactory/ad/AdMediaActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/VideoAdListener;->onClose(I)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->finish()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/VideoAdListener;->onClose(I)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->finish()V

    return-void
.end method

.method public a(Lcom/tnkfactory/ad/ImageAdItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->d(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/VideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tnkfactory/ad/VideoAdListener;->onShow()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/tnkfactory/ad/ImageAdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/cu;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->f(Lcom/tnkfactory/ad/AdMediaActivity;)V

    return-void
.end method

.method public c(Lcom/tnkfactory/ad/ImageAdItem;)V
    .locals 0

    return-void
.end method
