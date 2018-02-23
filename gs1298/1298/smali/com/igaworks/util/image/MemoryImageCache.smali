.class public Lcom/igaworks/util/image/MemoryImageCache;
.super Ljava/lang/Object;
.source "MemoryImageCache.java"

# interfaces
.implements Lcom/igaworks/util/image/ImageCache;


# instance fields
.field private lruCache:Lcom/igaworks/util/image/IgawLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/image/IgawLruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/igaworks/util/image/IgawLruCache;

    invoke-direct {v0, p1}, Lcom/igaworks/util/image/IgawLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    .line 13
    return-void
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/igaworks/util/image/IgawLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addBitmap(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmapFile"    # Ljava/io/File;

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    if-eqz p1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    invoke-virtual {v2, p1}, Lcom/igaworks/util/image/IgawLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    invoke-virtual {v2, p1, v0}, Lcom/igaworks/util/image/IgawLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    invoke-virtual {v0}, Lcom/igaworks/util/image/IgawLruCache;->evictAll()V

    .line 66
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/util/image/MemoryImageCache;->lruCache:Lcom/igaworks/util/image/IgawLruCache;

    invoke-virtual {v0, p1}, Lcom/igaworks/util/image/IgawLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
