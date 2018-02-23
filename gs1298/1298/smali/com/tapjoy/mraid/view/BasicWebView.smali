.class public Lcom/tapjoy/mraid/view/BasicWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/BasicWebView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/view/BasicWebView;->setScrollContainer(Z)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/view/BasicWebView;->setVerticalScrollBarEnabled(Z)V

    .line 21
    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/view/BasicWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 22
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tapjoy/mraid/view/BasicWebView$a;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/BasicWebView$a;-><init>(Lcom/tapjoy/mraid/view/BasicWebView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 32
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/view/BasicWebView;->setBackgroundColor(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method
