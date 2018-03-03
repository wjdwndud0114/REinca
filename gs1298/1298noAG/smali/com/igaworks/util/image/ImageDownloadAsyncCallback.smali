.class public abstract Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.super Ljava/lang/Object;
.source "ImageDownloadAsyncCallback.java"

# interfaces
.implements Lcom/igaworks/util/image/AsyncCallback;
.implements Lcom/igaworks/util/image/AsyncExecutorAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/image/AsyncCallback",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/igaworks/util/image/AsyncExecutorAware",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private asyncExecutor:Lcom/igaworks/util/image/AsyncExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/image/AsyncExecutor",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imageCache:Lcom/igaworks/util/image/ImageCache;

.field private imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private progressCircle:Landroid/widget/FrameLayout;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "imageCache"    # Lcom/igaworks/util/image/ImageCache;
    .param p4, "progressCircle"    # Landroid/widget/FrameLayout;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->url:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p3, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->imageCache:Lcom/igaworks/util/image/ImageCache;

    .line 29
    iput-object p4, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->progressCircle:Landroid/widget/FrameLayout;

    .line 30
    return-void
.end method

.method private addBitmapToCache(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Ljava/io/File;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->imageCache:Lcom/igaworks/util/image/ImageCache;

    iget-object v1, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/igaworks/util/image/ImageCache;->addBitmap(Ljava/lang/String;Ljava/io/File;)V

    .line 57
    iget-object v0, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->imageCache:Lcom/igaworks/util/image/ImageCache;

    iget-object v1, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/igaworks/util/image/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private applyBitmapToImageView(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, v0}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->isSameCallback(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method

.method private isSameCallback(Landroid/widget/ImageView;)Z
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->asyncExecutor:Lcom/igaworks/util/image/AsyncExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/util/image/AsyncExecutor;->cancel(Z)Z

    .line 77
    return-void
.end method

.method public cancelled()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public exceptionOccured(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 81
    return-void
.end method

.method public isSameUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url2"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/io/File;)V
    .locals 2
    .param p1, "bitmapFile"    # Ljava/io/File;

    .prologue
    .line 45
    :try_start_0
    invoke-direct {p0, p1}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->addBitmapToCache(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->onResultCustom(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->applyBitmapToImageView(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->onResult(Ljava/io/File;)V

    return-void
.end method

.method public abstract onResultCustom(Landroid/graphics/Bitmap;)V
.end method

.method public setAsyncExecutor(Lcom/igaworks/util/image/AsyncExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/image/AsyncExecutor",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "asyncExecutor":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;->asyncExecutor:Lcom/igaworks/util/image/AsyncExecutor;

    .line 35
    return-void
.end method
