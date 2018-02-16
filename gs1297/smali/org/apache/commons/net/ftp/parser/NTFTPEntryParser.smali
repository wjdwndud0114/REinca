.class public Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "NTFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MM-dd-yy hh:mma"

.field private static final DEFAULT_DATE_FORMAT2:Ljava/lang/String; = "MM-dd-yy kk:mm"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"


# instance fields
.field private final timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 7
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    invoke-direct {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 81
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy kk:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, "config2":Lorg/apache/commons/net/ftp/FTPClientConfig;
    const-string v1, "MM-dd-yy kk:mm"

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 87
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v1, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 162
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy hh:mma"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 10
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 103
    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 104
    .local v3, "f":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v3, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "datestr":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "dirString":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "size":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    if-eqz v4, :cond_0

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ".."

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 151
    .end local v0    # "datestr":Ljava/lang/String;
    .end local v1    # "dirString":Ljava/lang/String;
    .end local v3    # "f":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "size":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 116
    .restart local v0    # "datestr":Ljava/lang/String;
    .restart local v1    # "dirString":Ljava/lang/String;
    .restart local v3    # "f":Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "size":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/text/ParseException;
    :try_start_1
    iget-object v7, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v7, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 123
    :catch_1
    move-exception v7

    goto :goto_0

    .line 133
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 136
    const-string v6, "<DIR>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-virtual {v3, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 139
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 143
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 144
    if-eqz v5, :cond_1

    .line 146
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .end local v0    # "datestr":Ljava/lang/String;
    .end local v1    # "dirString":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "size":Ljava/lang/String;
    :cond_4
    move-object v3, v6

    .line 151
    goto :goto_1
.end method
