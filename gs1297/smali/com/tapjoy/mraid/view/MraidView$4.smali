.class final Lcom/tapjoy/mraid/view/MraidView$4;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
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
    .line 796
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "w"    # Landroid/webkit/WebView;

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 807
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->f(Lcom/tapjoy/mraid/view/MraidView;)V

    .line 808
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 919
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onHideCustomView()V
    .locals 0

    .prologue
    .line 910
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 911
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 800
    const-string v0, "MRAIDView"

    invoke-static {v0, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 813
    const-string v0, "MRAIDView"

    const-string v1, "-- onShowCustomView --"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 816
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0, p2}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 818
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 820
    check-cast p1, Landroid/widget/FrameLayout;

    .line 821
    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 829
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    invoke-static {v2, v1}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 831
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 833
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v3}, Lcom/tapjoy/mraid/view/MraidView;->h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 836
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 842
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 843
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 844
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v3}, Lcom/tapjoy/mraid/view/MraidView;->h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v1, v2}, Lcom/tapjoy/mraid/view/MraidView;->a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 848
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 851
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 852
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 853
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 856
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v2}, Lcom/tapjoy/mraid/view/MraidView;->k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView$c;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 864
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$4$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$4$1;-><init>(Lcom/tapjoy/mraid/view/MraidView$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 880
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$4$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$4$2;-><init>(Lcom/tapjoy/mraid/view/MraidView$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 891
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$4$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$4$3;-><init>(Lcom/tapjoy/mraid/view/MraidView$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 902
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$4;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0
.end method
