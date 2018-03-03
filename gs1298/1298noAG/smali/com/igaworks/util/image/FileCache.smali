.class public interface abstract Lcom/igaworks/util/image/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lcom/igaworks/util/image/FileEntry;
.end method

.method public abstract put(Ljava/lang/String;Lcom/igaworks/util/image/ByteProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/File;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
