.class public Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "CompositeFileEntryParser.java"


# instance fields
.field private cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1
    .param p1, "ftpFileEntryParsers"    # [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 43
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 44
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 6
    .param p1, "listEntry"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v5, :cond_0

    .line 51
    iget-object v5, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v5, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    .line 52
    .local v4, "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v4, :cond_2

    .line 69
    .end local v4    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :goto_0
    return-object v4

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .local v0, "arr$":[Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 61
    .local v1, "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    invoke-interface {v1, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    .line 62
    .restart local v4    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v4, :cond_1

    .line 64
    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "arr$":[Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v1    # "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
