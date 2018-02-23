.class public Lcom/igaworks/util/image/FileImageCache;
.super Ljava/lang/Object;
.source "FileImageCache.java"

# interfaces
.implements Lcom/igaworks/util/image/ImageCache;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileImageCache"


# instance fields
.field private fileCache:Lcom/igaworks/util/image/FileCache;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/igaworks/util/image/FileCacheFactory;->getInstance()Lcom/igaworks/util/image/FileCacheFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igaworks/util/image/FileCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/image/FileImageCache;->fileCache:Lcom/igaworks/util/image/FileCache;

    .line 18
    return-void
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/image/FileImageCache;->fileCache:Lcom/igaworks/util/image/FileCache;

    new-instance v1, Lcom/igaworks/util/image/FileImageCache$1;

    invoke-direct {v1, p0, p2}, Lcom/igaworks/util/image/FileImageCache$1;-><init>(Lcom/igaworks/util/image/FileImageCache;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Lcom/igaworks/util/image/FileCache;->put(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addBitmap(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmapFile"    # Ljava/io/File;

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/image/FileImageCache;->fileCache:Lcom/igaworks/util/image/FileCache;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/igaworks/util/image/FileCache;->put(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/igaworks/util/image/FileImageCache;->fileCache:Lcom/igaworks/util/image/FileCache;

    invoke-interface {v0}, Lcom/igaworks/util/image/FileCache;->clear()V

    .line 69
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    :try_start_0
    iget-object v4, p0, Lcom/igaworks/util/image/FileImageCache;->fileCache:Lcom/igaworks/util/image/FileCache;

    invoke-interface {v4, p1}, Lcom/igaworks/util/image/FileCache;->get(Ljava/lang/String;)Lcom/igaworks/util/image/FileEntry;

    move-result-object v0

    .line 47
    .local v0, "cachedFile":Lcom/igaworks/util/image/FileEntry;
    if-nez v0, :cond_0

    .line 61
    .end local v0    # "cachedFile":Lcom/igaworks/util/image/FileEntry;
    :goto_0
    return-object v3

    .line 51
    .restart local v0    # "cachedFile":Lcom/igaworks/util/image/FileEntry;
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 54
    invoke-virtual {v0}, Lcom/igaworks/util/image/FileEntry;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    invoke-virtual {v0}, Lcom/igaworks/util/image/FileEntry;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 59
    .end local v0    # "cachedFile":Lcom/igaworks/util/image/FileEntry;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
