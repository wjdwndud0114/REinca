.class public Lcom/igaworks/util/CommonResourceManager;
.super Ljava/lang/Object;
.source "CommonResourceManager.java"


# static fields
.field private static mImageCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearImageCache()V
    .locals 6

    .prologue
    .line 19
    :try_start_0
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_2

    .line 20
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 21
    .local v3, "keyList":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 22
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/String;

    .line 23
    .local v2, "key":Ljava/lang/String;
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 24
    .local v4, "temp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 25
    const/4 v4, 0x0

    .line 26
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_2
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_2

    .line 33
    sget-object v5, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_1
.end method

.method public static getBitmapResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 41
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    :cond_0
    :goto_0
    move-object v10, v1

    .line 87
    :goto_1
    return-object v10

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 46
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v6, "option":Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 48
    const/4 v10, 0x1

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 51
    if-eqz v4, :cond_2

    .line 53
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 59
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 60
    :try_start_2
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    if-nez v10, :cond_3

    .line 61
    new-instance v10, Ljava/util/WeakHashMap;

    invoke-direct {v10}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    .line 62
    :cond_3
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 65
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "option":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v7

    .line 66
    .local v7, "out":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 68
    :try_start_3
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 69
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 71
    .local v8, "path":Ljava/lang/String;
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 72
    .local v9, "temp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 73
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    const/4 v9, 0x0

    .line 75
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v8}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "temp":Landroid/graphics/Bitmap;
    :cond_4
    sget-object v10, Lcom/igaworks/util/CommonResourceManager;->mImageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->clear()V

    .line 79
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v11

    .line 80
    goto :goto_1

    .line 54
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "out":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "option":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "option":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v10

    goto :goto_0

    .line 81
    .restart local v7    # "out":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v3

    .line 82
    .local v3, "e1":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v10, v11

    .line 83
    goto :goto_1
.end method
