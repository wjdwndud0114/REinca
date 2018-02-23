.class public Lcom/igaworks/util/image/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field public static final MAX_IMAGE_CACHE:I = 0x64


# instance fields
.field private imageCache:Lcom/igaworks/util/image/ImageCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageCacheName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/igaworks/util/image/FileCacheFactory;->initialize(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/igaworks/util/image/FileCacheFactory;->getInstance()Lcom/igaworks/util/image/FileCacheFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/igaworks/util/image/FileCacheFactory;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/igaworks/util/image/FileCacheFactory;->getInstance()Lcom/igaworks/util/image/FileCacheFactory;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, p2, v2}, Lcom/igaworks/util/image/FileCacheFactory;->create(Ljava/lang/String;I)Lcom/igaworks/util/image/FileCache;

    .line 29
    :cond_0
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/igaworks/util/image/ImageCacheFactory;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, p2, v2}, Lcom/igaworks/util/image/ImageCacheFactory;->createTwoLevelCache(Ljava/lang/String;I)Lcom/igaworks/util/image/ImageCache;

    .line 32
    :cond_1
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/image/ImageDownloader;->imageCache:Lcom/igaworks/util/image/ImageCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_2
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 35
    const-string v1, "IGAW_QA"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 71
    if-eqz p2, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    .line 74
    .local v0, "asyncCallback":Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
    if-nez v0, :cond_1

    .line 85
    .end local v0    # "asyncCallback":Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
    :cond_0
    :goto_0
    return v2

    .line 76
    .restart local v0    # "asyncCallback":Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->isSameUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->cancel(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "asyncCallback":Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 85
    goto :goto_0
.end method

.method private createTemporaryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/igaw/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "mFile1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/igaworks/util/image/FileCacheImpl;->computeHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "mFile1":Ljava/io/File;
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private forceDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "noImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "progressCircle"    # Landroid/widget/FrameLayout;
    .param p5, "callback"    # Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/igaworks/util/image/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 62
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/igaworks/util/image/ImageDownloader;->runAsyncImageDownloading(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private runAsyncImageDownloading(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "progressCircle"    # Landroid/widget/FrameLayout;
    .param p4, "callback"    # Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    .prologue
    .line 91
    :try_start_0
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/ImageDownloader;->createTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, "tempFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 119
    .end local v2    # "tempFile":Ljava/io/File;
    :goto_0
    return-void

    .line 95
    .restart local v2    # "tempFile":Ljava/io/File;
    :cond_0
    new-instance v0, Lcom/igaworks/util/image/FileDownloadCallable;

    invoke-direct {v0, p1, v2}, Lcom/igaworks/util/image/FileDownloadCallable;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 99
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/File;>;"
    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/igaworks/util/image/ImageDownloader$1;

    invoke-direct {v4, p0, v0, p4}, Lcom/igaworks/util/image/ImageDownloader$1;-><init>(Lcom/igaworks/util/image/ImageDownloader;Ljava/util/concurrent/Callable;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/File;>;"
    .end local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "noImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "progressCircle"    # Landroid/widget/FrameLayout;
    .param p5, "callback"    # Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    .prologue
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/util/image/ImageDownloader;->imageCache:Lcom/igaworks/util/image/ImageCache;

    invoke-interface {v2, p1}, Lcom/igaworks/util/image/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/igaworks/util/image/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 54
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p5, v0}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->onResultCustom(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/igaworks/util/image/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
