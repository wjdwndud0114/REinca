.class final Lcom/tapjoy/mraid/view/MraidView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/mraid/listener/Player;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$5;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x65

    .line 1426
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1427
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1428
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5;->a:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1429
    return-void
.end method

.method public final onError()V
    .locals 0

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView$5;->onComplete()V

    .line 1421
    return-void
.end method

.method public final onPrepared()V
    .locals 0

    .prologue
    .line 1416
    return-void
.end method
