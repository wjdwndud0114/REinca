.class final Lcom/tapjoy/mraid/view/MraidView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->b:Lcom/tapjoy/mraid/view/MraidView;

    iput-object p2, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 318
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    const-string v1, "javascript:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->b:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in evaluateJavascript. Device not supported. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->b:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->b(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$a;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$1;->b:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/mraid/view/MraidView$a;-><init>(Lcom/tapjoy/mraid/view/MraidView;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$1;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$1;->b:Lcom/tapjoy/mraid/view/MraidView;

    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
