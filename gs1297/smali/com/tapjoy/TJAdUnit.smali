.class public Lcom/tapjoy/TJAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnit$a;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;
    }
.end annotation


# static fields
.field public static publisherVideoListener:Lcom/tapjoy/TJVideoListener;


# instance fields
.field private a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

.field private b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field private c:Lcom/tapjoy/TJAdUnitActivity;

.field private d:Lcom/tapjoy/TJAdUnitJSBridge;

.field private e:Lcom/tapjoy/mraid/view/BasicWebView;

.field private f:Lcom/tapjoy/mraid/view/MraidView;

.field private g:Landroid/widget/VideoView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Ljava/util/Timer;

.field private l:Z

.field private m:Ljava/util/concurrent/ScheduledFuture;

.field private n:Landroid/media/AudioManager;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private volatile u:Z

.field private v:Z

.field private w:I

.field private final x:Ljava/lang/Runnable;

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->w:I

    .line 107
    new-instance v0, Lcom/tapjoy/TJAdUnit$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$1;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->x:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/tapjoy/TJAdUnit;->o:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    const-string v0, "TJAdUnit"

    const-string v1, "detachVolumeListener"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 366
    iput-object v2, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 369
    :cond_0
    iput-object v2, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    .line 370
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 443
    if-eqz p0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    .line 3128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3129
    const-string v0, "TJAdUnit"

    const-string v2, "Constructing ad unit"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 3133
    new-instance v0, Lcom/tapjoy/mraid/view/BasicWebView;

    invoke-direct {v0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    .line 3134
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    const-string v2, "<!DOCTYPE html><html><head><title>Tapjoy Background Webview</title></head></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/BasicWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {v0, p1}, Lcom/tapjoy/mraid/view/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    .line 3138
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v1, Lcom/tapjoy/TJAdUnit$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJAdUnit$a;-><init>(Lcom/tapjoy/TJAdUnit;B)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 3141
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    .line 3142
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3143
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3144
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3145
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 3148
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {v0, p1, p0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 3151
    instance-of v0, p1, Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    .line 3152
    check-cast p1, Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 3156
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 44
    return v0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    return v0
.end method

.method private static b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 450
    if-eq p0, v0, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnit;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnit;)V
    .locals 1

    .prologue
    .line 44
    .line 2356
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVolumeChanged()V

    .line 44
    return-void
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnit;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/BasicWebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->h:I

    return v0
.end method

.method static synthetic j(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic k(Lcom/tapjoy/TJAdUnit;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 44
    .line 3903
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3904
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    .line 3905
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TJAdUnit$9;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnit$9;-><init>(Lcom/tapjoy/TJAdUnit;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 44
    return-void
.end method

.method static synthetic l(Lcom/tapjoy/TJAdUnit;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/tapjoy/TJAdUnit;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic n(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->h:I

    return v0
.end method

.method static synthetic o(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    return-object v0
.end method

.method static synthetic p(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    return-void
.end method

.method static synthetic q(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    return v0
.end method

.method static synthetic r(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    return v0
.end method

.method static synthetic s(Lcom/tapjoy/TJAdUnit;)V
    .locals 1

    .prologue
    .line 44
    .line 4312
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 44
    return-void
.end method


# virtual methods
.method public attachVolumeListener(ZI)V
    .locals 7
    .param p1, "isAttached"    # Z
    .param p2, "interval"    # I

    .prologue
    const/4 v3, 0x3

    .line 681
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attachVolumeListener: isAttached="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    .line 686
    if-nez p1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 691
    if-eqz v0, :cond_0

    .line 692
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    .line 693
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    .line 694
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->p:I

    .line 695
    sget-object v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->x:Ljava/lang/Runnable;

    int-to-long v2, p2

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1
    .param p1, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Lcom/tapjoy/TJAdUnit$7;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/TJAdUnit$7;-><init>(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    goto :goto_0
.end method

.method public closeRequested(Z)V
    .locals 2
    .param p1, "shouldForceClose"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    .line 251
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/BasicWebView;->removeAllViews()V

    .line 253
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeAllViews()V

    .line 259
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 266
    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 267
    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    .line 270
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 273
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    .line 276
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClosed()V

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    .line 281
    return-void
.end method

.method public fireContentReady()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onContentReady()V

    .line 306
    :cond_0
    return-void
.end method

.method public fireOnVideoComplete()V
    .locals 2

    .prologue
    .line 842
    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoComplete"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoComplete()V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoCompleted()V

    .line 851
    :cond_1
    return-void
.end method

.method public fireOnVideoError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 830
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onVideoError with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TJVideoListener;->onVideoError(I)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0, p1}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 839
    :cond_1
    return-void
.end method

.method public fireOnVideoStart()V
    .locals 2

    .prologue
    .line 818
    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoStart()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoStart()V

    .line 827
    :cond_1
    return-void
.end method

.method public getBackgroundWebView()Lcom/tapjoy/mraid/view/BasicWebView;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/mraid/view/BasicWebView;

    return-object v0
.end method

.method public getCloseRequested()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->w:I

    return v0
.end method

.method public getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;
    .locals 1

    .prologue
    .line 916
    sget-object v0, Lcom/tapjoy/TJAdUnit;->publisherVideoListener:Lcom/tapjoy/TJVideoListener;

    return-object v0
.end method

.method public getVideoSeekTime()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->h:I

    return v0
.end method

.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    return-object v0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 5

    .prologue
    .line 855
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->p:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 858
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/tapjoy/mraid/view/MraidView;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    return-object v0
.end method

.method public hasCalledLoad()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    return v0
.end method

.method public varargs invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :cond_0
    return-void
.end method

.method public isLockedOrientation()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->q:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrerendered()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return v0
.end method

.method public isVideoComplete()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    return v0
.end method

.method public load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "placementData"    # Lcom/tapjoy/TJPlacementData;
    .param p2, "shouldPrerenderContent"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    .line 183
    new-instance v0, Lcom/tapjoy/TJAdUnit$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tapjoy/TJAdUnit$2;-><init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1
    .param p1, "videoURL"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .prologue
    .line 576
    new-instance v0, Lcom/tapjoy/TJAdUnit$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$5;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 590
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 801
    const-string v0, "TJAdUnit"

    const-string v1, "video -- onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    .line 806
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->i:Z

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoCompletion()V

    .line 811
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoComplete()V

    .line 814
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->i:Z

    .line 815
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x1

    .line 748
    const-string v0, "TJAdUnit"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error encountered when instantiating the VideoView: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 751
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->i:Z

    .line 752
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 756
    packed-switch p2, :pswitch_data_0

    .line 762
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    .line 766
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    sparse-switch p3, :sswitch_data_0

    .line 782
    const-string v0, "MEDIA_ERROR_EXTRA_UNKNOWN"

    .line 786
    :goto_1
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoError(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoError(Ljava/lang/String;)V

    .line 792
    if-eq p2, v1, :cond_0

    const/16 v0, -0x3ec

    if-ne p3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 796
    :goto_2
    return v0

    .line 758
    :pswitch_0
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    .line 770
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MEDIA_ERROR_IO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 773
    :sswitch_1
    const-string v0, "MEDIA_ERROR_MALFORMED"

    goto :goto_1

    .line 776
    :sswitch_2
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_1

    .line 779
    :sswitch_3
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_1

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 756
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 768
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 867
    const-string v0, ""

    .line 870
    sparse-switch p2, :sswitch_data_0

    .line 897
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoInfo(Ljava/lang/String;)V

    .line 898
    const/4 v0, 0x0

    return v0

    .line 874
    :sswitch_0
    const-string v0, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    goto :goto_0

    .line 879
    :sswitch_1
    const-string v0, "MEDIA_INFO_VIDEO_RENDERING_START"

    goto :goto_0

    .line 884
    :sswitch_2
    const-string v0, "MEDIA_INFO_BUFFERING_START"

    goto :goto_0

    .line 888
    :sswitch_3
    const-string v0, "MEDIA_INFO_BUFFERING_END"

    goto :goto_0

    .line 892
    :sswitch_4
    const-string v0, "MEDIA_INFO_NOT_SEEKABLE"

    goto :goto_0

    .line 870
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x321 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 723
    const-string v0, "TJAdUnit"

    const-string v1, "video -- onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 725
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getMeasuredWidth()I

    move-result v1

    .line 726
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result v2

    .line 730
    iget v3, p0, Lcom/tapjoy/TJAdUnit;->h:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    iget v4, p0, Lcom/tapjoy/TJAdUnit;->h:I

    if-eq v3, v4, :cond_0

    .line 731
    new-instance v3, Lcom/tapjoy/TJAdUnit$8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tapjoy/TJAdUnit$8;-><init>(Lcom/tapjoy/TJAdUnit;III)V

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 743
    :goto_0
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 744
    return-void

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoReady(III)V

    goto :goto_0
.end method

.method public pauseVideo()Z
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 644
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 647
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->h:I

    .line 649
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video paused at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->h:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoPaused(I)V

    .line 652
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 599
    const-string v1, "TJAdUnit"

    const-string v2, "playVideo"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    if-nez v1, :cond_0

    .line 633
    :goto_0
    return v0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 606
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    .line 609
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->y:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 610
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->y:Landroid/os/Handler;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->y:Landroid/os/Handler;

    new-instance v1, Lcom/tapjoy/TJAdUnit$6;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnit$6;-><init>(Lcom/tapjoy/TJAdUnit;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z
    .locals 4
    .param p1, "placementData"    # Lcom/tapjoy/TJPlacementData;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->isPrerenderingRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canPreRenderPlacement()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    .line 168
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    .line 171
    :cond_1
    const-string v1, "TJAdUnit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pre-rendering ad unit for placement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementPreRenderCount()V

    .line 173
    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public resetContentLoadState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    .line 288
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    .line 289
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    .line 290
    return-void
.end method

.method public resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V
    .locals 5
    .param p1, "saveStateData"    # Lcom/tapjoy/TJAdUnitSaveStateData;

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v4, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 227
    :cond_0
    if-eqz p1, :cond_1

    .line 228
    iget v0, p1, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->h:I

    .line 229
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 231
    :cond_1
    return-void
.end method

.method public setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/tapjoy/TJAdUnitActivity;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 459
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setContext(Landroid/content/Context;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 466
    :cond_1
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1
    .param p1, "hexColor"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .prologue
    .line 472
    new-instance v0, Lcom/tapjoy/TJAdUnit$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$3;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1
    .param p1, "backgroundHTML"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .prologue
    .line 491
    new-instance v0, Lcom/tapjoy/TJAdUnit$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$4;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method public setOrientation(I)V
    .locals 10
    .param p1, "requestedOrientation"    # I

    .prologue
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 333
    iget-object v5, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 334
    if-eqz v5, :cond_8

    .line 1378
    iget-object v6, p0, Lcom/tapjoy/TJAdUnit;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 1379
    if-eqz v6, :cond_a

    .line 1380
    invoke-virtual {v6}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1381
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1382
    invoke-virtual {v6}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1384
    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1385
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1388
    if-eqz v7, :cond_0

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    :cond_0
    if-gt v8, v6, :cond_3

    :cond_1
    if-eq v7, v1, :cond_2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_9

    :cond_2
    if-le v6, v8, :cond_9

    .line 1392
    :cond_3
    packed-switch v7, :pswitch_data_0

    move v0, v1

    .line 336
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/tapjoy/TJAdUnit;->w:I

    if-eq v2, v4, :cond_4

    .line 337
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->w:I

    .line 340
    :cond_4
    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 341
    :cond_5
    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    :cond_6
    iget p1, p0, Lcom/tapjoy/TJAdUnit;->w:I

    .line 345
    :cond_7
    invoke-virtual {v5, p1}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 347
    iput p1, p0, Lcom/tapjoy/TJAdUnit;->w:I

    .line 348
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->q:Z

    .line 350
    :cond_8
    return-void

    :pswitch_1
    move v0, v1

    .line 1395
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 1402
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 1406
    goto :goto_0

    .line 1416
    :cond_9
    packed-switch v7, :pswitch_data_1

    .line 1432
    const-string v2, "TJAdUnit"

    const-string v3, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 1422
    goto :goto_0

    :pswitch_5
    move v0, v3

    .line 1426
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 1430
    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1416
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V
    .locals 0
    .param p1, "adUnitVideoListener"    # Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 519
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    .line 294
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 297
    :cond_0
    return-void
.end method

.method public setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V
    .locals 0
    .param p1, "adUnitWebViewListener"    # Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 512
    return-void
.end method
