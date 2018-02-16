.class final Lcom/tapjoy/TJAdUnitJSBridge$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$a;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1456
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$a;->a:Landroid/webkit/WebView;

    .line 1457
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1449
    check-cast p1, [Ljava/lang/Boolean;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1449
    check-cast p1, [Ljava/lang/Boolean;

    .line 2466
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2467
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2468
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$a;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v2}, Lcom/tapjoy/TJAdUnitJSBridge;->d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2469
    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$a$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$a$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge$a;ZZ)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 2524
    :cond_0
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to present offerwall. No Activity context provided."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
