.class final Lcom/tapjoy/TJAdUnit$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
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
    .line 491
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$4;->c:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 495
    :try_start_0
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBackgroundContent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$4;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/BasicWebView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/BasicWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error setting background content. backgroundWebView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnit;->f(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/BasicWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$4;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    goto :goto_0
.end method
