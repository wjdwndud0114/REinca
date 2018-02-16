.class Lcom/tnkfactory/ad/ey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/ex;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/BannerBaseAdView;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/BannerBaseAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ey;->a:Lcom/tnkfactory/ad/BannerBaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ey;->a:Lcom/tnkfactory/ad/BannerBaseAdView;

    invoke-static {v0}, Lcom/tnkfactory/ad/BannerBaseAdView;->a(Lcom/tnkfactory/ad/BannerBaseAdView;)Lcom/tnkfactory/ad/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ey;->a:Lcom/tnkfactory/ad/BannerBaseAdView;

    invoke-static {v0}, Lcom/tnkfactory/ad/BannerBaseAdView;->a(Lcom/tnkfactory/ad/BannerBaseAdView;)Lcom/tnkfactory/ad/BannerAdListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tnkfactory/ad/BannerAdListener;->onFailure(I)V

    :cond_0
    return-void
.end method
