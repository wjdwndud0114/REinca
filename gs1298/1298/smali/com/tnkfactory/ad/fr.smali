.class Lcom/tnkfactory/ad/fr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/VideoAdListener;


# instance fields
.field private a:Lcom/tnkfactory/ad/TnkAdListener;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    iput-object p1, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0, p1}, Lcom/tnkfactory/ad/TnkAdListener;->onClose(I)V

    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0, p1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onLoad()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/fr;->a:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onShow()V

    :cond_0
    return-void
.end method

.method public onVideoCompleted(Z)V
    .locals 0

    return-void
.end method
