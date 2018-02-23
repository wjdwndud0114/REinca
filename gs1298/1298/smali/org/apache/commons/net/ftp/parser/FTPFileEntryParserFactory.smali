.class public interface abstract Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "FTPFileEntryParserFactory.java"


# virtual methods
.method public abstract createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
        }
    .end annotation
.end method

.method public abstract createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
        }
    .end annotation
.end method
