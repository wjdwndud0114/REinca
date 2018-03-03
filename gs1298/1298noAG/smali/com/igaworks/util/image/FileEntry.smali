.class public Lcom/igaworks/util/image/FileEntry;
.super Ljava/lang/Object;
.source "FileEntry.java"


# instance fields
.field private file:Ljava/io/File;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/igaworks/util/image/FileEntry;->key:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/igaworks/util/image/FileEntry;->file:Ljava/io/File;

    .line 17
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/igaworks/util/image/FileEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/igaworks/util/image/FileEntry;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/igaworks/util/image/FileEntry;->key:Ljava/lang/String;

    return-object v0
.end method
