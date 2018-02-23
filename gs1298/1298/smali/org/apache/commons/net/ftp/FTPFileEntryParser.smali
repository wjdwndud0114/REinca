.class public interface abstract Lorg/apache/commons/net/ftp/FTPFileEntryParser;
.super Ljava/lang/Object;
.source "FTPFileEntryParser.java"


# virtual methods
.method public abstract parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
.end method

.method public abstract preParse(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
