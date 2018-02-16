.class final Lcom/tapjoy/TJCorePlacement$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoComplete(Lcom/tapjoy/TJPlacement;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final onVideoError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoError(Lcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public final onVideoStart()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$4;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoStart(Lcom/tapjoy/TJPlacement;)V

    .line 121
    :cond_0
    return-void
.end method
