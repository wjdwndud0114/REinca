.class public Lorg/apache/commons/net/ftp/FTPListParseEngine;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# instance fields
.field private _internalIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 85
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 86
    return-void
.end method

.method private readStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/net/util/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v1, "reader":Ljava/io/BufferedReader;
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 132
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    return-void
.end method


# virtual methods
.method public getFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "filter"    # Lorg/apache/commons/net/ftp/FTPFileFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 250
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "entry":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v4, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 253
    .local v2, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-interface {p1, v2}, Lorg/apache/commons/net/ftp/FTPFileFilter;->accept(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v4
.end method

.method public getNext(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "quantityRequested"    # I

    .prologue
    .line 162
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 163
    .local v3, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v0, p1

    .line 164
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "entry":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v4, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 167
    .local v2, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, -0x1

    .line 169
    goto :goto_0

    .line 170
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v4
.end method

.method public getPrevious(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "quantityRequested"    # I

    .prologue
    .line 201
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 202
    .local v3, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v0, p1

    .line 203
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, "entry":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v4, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 206
    .local v2, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    add-int/lit8 v0, v0, -0x1

    .line 208
    goto :goto_0

    .line 209
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v4
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public readServerList(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->resetIterator()V

    .line 107
    return-void
.end method

.method public resetIterator()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 288
    return-void
.end method
