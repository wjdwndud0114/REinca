.class final Lcom/tapjoy/TJAdUnit$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

.field final synthetic c:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$5;->c:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnit$5;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->g(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadVideoUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->g(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->g(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->g(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 584
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$5;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    invoke-interface {v0, v3}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    goto :goto_0
.end method
