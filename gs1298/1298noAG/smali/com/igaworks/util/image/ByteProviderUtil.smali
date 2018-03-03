.class public abstract Lcom/igaworks/util/image/ByteProviderUtil;
.super Ljava/lang/Object;
.source "ByteProviderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/File;)Lcom/igaworks/util/image/ByteProvider;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 20
    new-instance v0, Lcom/igaworks/util/image/ByteProviderUtil$2;

    invoke-direct {v0, p0}, Lcom/igaworks/util/image/ByteProviderUtil$2;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;)Lcom/igaworks/util/image/ByteProvider;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 11
    new-instance v0, Lcom/igaworks/util/image/ByteProviderUtil$1;

    invoke-direct {v0, p0}, Lcom/igaworks/util/image/ByteProviderUtil$1;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/igaworks/util/image/ByteProvider;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/igaworks/util/image/ByteProviderUtil$3;

    invoke-direct {v0, p0}, Lcom/igaworks/util/image/ByteProviderUtil$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
