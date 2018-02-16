.class Lcom/tnkfactory/ad/jl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/TnkAdListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jd;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jd;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/jl;->a:Lcom/tnkfactory/ad/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/jl;->a:Lcom/tnkfactory/ad/jd;

    invoke-static {v0, p1}, Lcom/tnkfactory/ad/jd;->a(Lcom/tnkfactory/ad/jd;I)V

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
