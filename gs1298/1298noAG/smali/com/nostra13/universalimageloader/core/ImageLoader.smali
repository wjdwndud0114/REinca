.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoader$1;,
        Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    }
.end annotation


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final ERROR_WRONG_ARGUMENTS:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy ImageLoader"

.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final LOG_LOAD_IMAGE_FROM_MEMORY_CACHE:Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final TAG:Ljava/lang/String;

.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile instance:Lcom/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 81
    return-void
.end method

.method private checkConfiguration()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    return-void
.end method

.method private static defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 3
    .param p0, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 736
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    const/4 v0, 0x0

    .line 741
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 739
    new-instance v0, Landroid/os/Handler;

    .end local v0    # "handler":Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 669
    return-void
.end method

.method public cancelDisplayTask(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 659
    return-void
.end method

.method public clearDiscCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 622
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 631
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->clear()V

    .line 632
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 589
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    .line 590
    return-void
.end method

.method public denyNetworkDownloads(Z)V
    .locals 1
    .param p1, "denyNetworkDownloads"    # Z

    .prologue
    .line 682
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->denyNetworkDownloads(Z)V

    .line 683
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const-string v0, "Destroy ImageLoader"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->stop()V

    .line 729
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->close()V

    .line 730
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 731
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 732
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 286
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 287
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 303
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 304
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 340
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 341
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 365
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 366
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v3, 0x0

    .line 320
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 321
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    const/4 v3, 0x0

    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 126
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 162
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 182
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 183
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 209
    if-nez p2, :cond_0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    if-nez p4, :cond_1

    .line 213
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 215
    :cond_1
    if-nez p3, :cond_2

    .line 216
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 219
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 221
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 222
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 227
    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 272
    :goto_1
    return-void

    .line 225
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    .line 232
    .local v3, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-static {p1, v3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "memoryCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 235
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 237
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v1, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 238
    .local v9, "bmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 239
    const-string v1, "Load image from memory cache [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 244
    .local v0, "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v10, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v10, v1, v9, v0, v2}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 246
    .local v10, "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {v10}, Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->run()V

    goto :goto_1

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, v10}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V

    goto :goto_1

    .line 252
    .end local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v10    # "displayTask":Lcom/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_6
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v1, v9, p2, v2}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 253
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1, v9}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 256
    :cond_7
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 257
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 262
    :cond_8
    :goto_2
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 264
    .restart local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v10, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v10, v1, v0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 266
    .local v10, "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    invoke-virtual {v10}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_1

    .line 258
    .end local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v10    # "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :cond_9
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 269
    .restart local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .restart local v10    # "displayTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :cond_a
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, v10}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    goto/16 :goto_1
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v3, 0x0

    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 144
    return-void
.end method

.method public getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 610
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 1
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 579
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method public handleSlowNetwork(Z)V
    .locals 1
    .param p1, "handleSlowNetwork"    # Z

    .prologue
    .line 693
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->handleSlowNetwork(Z)V

    .line 694
    return-void
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .prologue
    .line 92
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 98
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v2, 0x0

    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 420
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 444
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 445
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p5, "progressListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 475
    if-nez p2, :cond_0

    .line 476
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    .line 478
    :cond_0
    if-nez p3, :cond_1

    .line 479
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 482
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .local v2, "imageAware":Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 484
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v3, 0x0

    .line 400
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 401
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    const/4 v2, 0x0

    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 381
    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, v0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 551
    if-nez p3, :cond_0

    .line 552
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 554
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    .line 556
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader$1;)V

    .line 557
    .local v0, "listener":Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 558
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->pause()V

    .line 703
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->resume()V

    .line 708
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->stop()V

    .line 719
    return-void
.end method
