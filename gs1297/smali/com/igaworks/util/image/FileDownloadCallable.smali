.class public Lcom/igaworks/util/image/FileDownloadCallable;
.super Ljava/lang/Object;
.source "FileDownloadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/igaworks/util/image/FileDownloadCallable;->url:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/igaworks/util/image/FileDownloadCallable;->file:Ljava/io/File;

    .line 14
    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Lcom/igaworks/util/image/HttpRequestHelper;->getInstance()Lcom/igaworks/util/image/HttpRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/util/image/FileDownloadCallable;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/util/image/FileDownloadCallable;->file:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/image/HttpRequestHelper;->download(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/igaworks/util/image/FileDownloadCallable;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
