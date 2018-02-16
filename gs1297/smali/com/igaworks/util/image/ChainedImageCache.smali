.class public Lcom/igaworks/util/image/ChainedImageCache;
.super Ljava/lang/Object;
.source "ChainedImageCache.java"

# interfaces
.implements Lcom/igaworks/util/image/ImageCache;


# instance fields
.field private chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/util/image/ImageCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/util/image/ImageCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/igaworks/util/image/ChainedImageCache;->chain:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/igaworks/util/image/ChainedImageCache;->chain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageCache;

    .line 20
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    invoke-interface {v0, p1, p2}, Lcom/igaworks/util/image/ImageCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 22
    .end local v0    # "cache":Lcom/igaworks/util/image/ImageCache;
    :cond_0
    return-void
.end method

.method public addBitmap(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmapFile"    # Ljava/io/File;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/igaworks/util/image/ChainedImageCache;->chain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageCache;

    .line 27
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    invoke-interface {v0, p1, p2}, Lcom/igaworks/util/image/ImageCache;->addBitmap(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 29
    .end local v0    # "cache":Lcom/igaworks/util/image/ImageCache;
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/igaworks/util/image/ChainedImageCache;->chain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/image/ImageCache;

    .line 64
    .local v0, "cache":Lcom/igaworks/util/image/ImageCache;
    invoke-interface {v0}, Lcom/igaworks/util/image/ImageCache;->clear()V

    goto :goto_0

    .line 66
    .end local v0    # "cache":Lcom/igaworks/util/image/ImageCache;
    :cond_0
    return-void
.end method

.method public final getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 37
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "previousCaches":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    iget-object v4, p0, Lcom/igaworks/util/image/ChainedImageCache;->chain:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/util/image/ImageCache;

    .line 39
    .local v1, "cache":Lcom/igaworks/util/image/ImageCache;
    invoke-interface {v1, p1}, Lcom/igaworks/util/image/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    .end local v1    # "cache":Lcom/igaworks/util/image/ImageCache;
    :cond_0
    if-nez v0, :cond_3

    .line 46
    const/4 v4, 0x0

    .line 58
    .end local v3    # "previousCaches":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    :goto_1
    return-object v4

    .line 43
    .restart local v1    # "cache":Lcom/igaworks/util/image/ImageCache;
    .restart local v3    # "previousCaches":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "cache":Lcom/igaworks/util/image/ImageCache;
    .end local v3    # "previousCaches":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v4, v0

    .line 58
    goto :goto_1

    .line 48
    .restart local v3    # "previousCaches":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/util/image/ImageCache;>;"
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/util/image/ImageCache;

    .line 50
    .restart local v1    # "cache":Lcom/igaworks/util/image/ImageCache;
    invoke-interface {v1, p1, v0}, Lcom/igaworks/util/image/ImageCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
