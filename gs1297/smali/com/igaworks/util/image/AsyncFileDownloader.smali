.class public Lcom/igaworks/util/image/AsyncFileDownloader;
.super Ljava/lang/Object;
.source "AsyncFileDownloader.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/igaworks/util/image/AsyncFileDownloader;->context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private createTemporaryFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "afd"

    const-string v1, ".tmp"

    iget-object v2, p0, Lcom/igaworks/util/image/AsyncFileDownloader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getDestinationIfNotNullOrCreateTemp(Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)Ljava/io/File;
    .locals 0
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    .line 36
    .end local p1    # "destination":Ljava/io/File;
    :goto_0
    return-object p1

    .restart local p1    # "destination":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/util/image/AsyncFileDownloader;->createTemporaryFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0
.end method

.method private runAsyncDownload(Ljava/lang/String;Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<Ljava/io/File;>;"
    new-instance v0, Lcom/igaworks/util/image/FileDownloadCallable;

    invoke-direct {v0, p1, p2}, Lcom/igaworks/util/image/FileDownloadCallable;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 45
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/io/File;>;"
    new-instance v1, Lcom/igaworks/util/image/AsyncExecutor;

    invoke-direct {v1}, Lcom/igaworks/util/image/AsyncExecutor;-><init>()V

    invoke-virtual {v1, v0}, Lcom/igaworks/util/image/AsyncExecutor;->setCallable(Ljava/util/concurrent/Callable;)Lcom/igaworks/util/image/AsyncExecutor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/igaworks/util/image/AsyncExecutor;->setCallback(Lcom/igaworks/util/image/AsyncCallback;)Lcom/igaworks/util/image/AsyncExecutor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/igaworks/util/image/AsyncExecutor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/igaworks/util/image/AsyncCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/util/image/AsyncFileDownloader;->download(Ljava/lang/String;Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)V

    .line 19
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/igaworks/util/image/AsyncCallback",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "callback":Lcom/igaworks/util/image/AsyncCallback;, "Lcom/igaworks/util/image/AsyncCallback<Ljava/io/File;>;"
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/igaworks/util/image/AsyncFileDownloader;->getDestinationIfNotNullOrCreateTemp(Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/util/image/AsyncFileDownloader;->runAsyncDownload(Ljava/lang/String;Ljava/io/File;Lcom/igaworks/util/image/AsyncCallback;)V

    .line 29
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {p3, v0}, Lcom/igaworks/util/image/AsyncCallback;->exceptionOccured(Ljava/lang/Exception;)V

    goto :goto_0
.end method
