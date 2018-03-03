.class Lcom/igaworks/util/image/ImageDownloader$1;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/image/ImageDownloader;->runAsyncImageDownloading(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/image/ImageDownloader;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$callback:Lcom/igaworks/util/image/ImageDownloadAsyncCallback;


# direct methods
.method constructor <init>(Lcom/igaworks/util/image/ImageDownloader;Ljava/util/concurrent/Callable;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/image/ImageDownloader;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/igaworks/util/image/ImageDownloader$1;->this$0:Lcom/igaworks/util/image/ImageDownloader;

    iput-object p2, p0, Lcom/igaworks/util/image/ImageDownloader$1;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/igaworks/util/image/ImageDownloader$1;->val$callback:Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Lcom/igaworks/util/image/AsyncExecutor;

    invoke-direct {v0}, Lcom/igaworks/util/image/AsyncExecutor;-><init>()V

    .line 108
    .local v0, "ae":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<Ljava/io/File;>;"
    iget-object v2, p0, Lcom/igaworks/util/image/ImageDownloader$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v2}, Lcom/igaworks/util/image/AsyncExecutor;->setCallable(Ljava/util/concurrent/Callable;)Lcom/igaworks/util/image/AsyncExecutor;

    .line 109
    iget-object v2, p0, Lcom/igaworks/util/image/ImageDownloader$1;->val$callback:Lcom/igaworks/util/image/ImageDownloadAsyncCallback;

    invoke-virtual {v0, v2}, Lcom/igaworks/util/image/AsyncExecutor;->setCallback(Lcom/igaworks/util/image/AsyncCallback;)Lcom/igaworks/util/image/AsyncExecutor;

    .line 110
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/igaworks/util/image/AsyncExecutor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "ae":Lcom/igaworks/util/image/AsyncExecutor;, "Lcom/igaworks/util/image/AsyncExecutor<Ljava/io/File;>;"
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
