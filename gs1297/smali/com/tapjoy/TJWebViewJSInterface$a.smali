.class final Lcom/tapjoy/TJWebViewJSInterface$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJWebViewJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/tapjoy/TJWebViewJSInterface;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface$a;->b:Lcom/tapjoy/TJWebViewJSInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface$a;->a:Landroid/webkit/WebView;

    .line 178
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/String;

    .line 2181
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 172
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 172
    check-cast p1, Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface$a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1189
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1191
    :try_start_0
    const-string v0, "javascript:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lcom/tapjoy/TJWebViewJSInterface$a;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    const-string v1, "TJWebViewJSInterface"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in evaluateJavascript. Device not supported. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0

    .line 1198
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJWebViewJSInterface$a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1199
    :catch_1
    move-exception v0

    .line 1200
    const-string v1, "TJWebViewJSInterface"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in loadUrl. Device not supported. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method
