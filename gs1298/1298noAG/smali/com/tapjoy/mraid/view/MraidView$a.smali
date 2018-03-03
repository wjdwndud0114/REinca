.class final Lcom/tapjoy/mraid/view/MraidView$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tapjoy/TapjoyHttpURLResponse;

.field b:Lcom/tapjoy/TapjoyURLConnection;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/mraid/view/MraidView;B)V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView$a;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1637
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->c:Ljava/lang/String;

    .line 1641
    :try_start_0
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->b:Lcom/tapjoy/TapjoyURLConnection;

    .line 1642
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->b:Lcom/tapjoy/TapjoyURLConnection;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1646
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1628
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView$a;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1628
    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2659
    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Connection not properly established"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 2661
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2663
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v2, 0x0

    const-string v3, "Connection not properly established"

    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2668
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2670
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "302 redirectURL detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2679
    :catch_0
    move-exception v0

    .line 2681
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in loadURL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2676
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$a;->d:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$a;->a:Lcom/tapjoy/TapjoyHttpURLResponse;

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/tapjoy/mraid/view/MraidView$a;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
