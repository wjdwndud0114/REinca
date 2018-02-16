.class Lcom/tnkfactory/ad/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/VideoAdListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ak;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    const-string v0, "############## onClose by detail view"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ak;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->a(Lcom/tnkfactory/ad/ah;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdListView;->updateAdList()V

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    return-void
.end method

.method public onLoad()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onVideoCompleted(Z)V
    .locals 0

    return-void
.end method
