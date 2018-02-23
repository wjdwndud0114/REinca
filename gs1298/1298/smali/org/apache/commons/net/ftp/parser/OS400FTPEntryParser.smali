.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "OS400FTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .prologue
    .line 71
    const-string v0, "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

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
    .line 80
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 81
    .local v1, "file":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "usr":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "filesize":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "datestr":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "typeStr":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    const-string v8, "*STMF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    const/4 v5, 0x0

    .line 115
    .local v5, "type":I
    :goto_1
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 117
    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 121
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :goto_2
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 130
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    :cond_0
    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 133
    .local v4, "pos":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_1

    .line 135
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 142
    .end local v0    # "datestr":Ljava/lang/String;
    .end local v1    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v2    # "filesize":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "type":I
    .end local v6    # "typeStr":Ljava/lang/String;
    .end local v7    # "usr":Ljava/lang/String;
    :goto_3
    return-object v1

    .line 106
    .restart local v0    # "datestr":Ljava/lang/String;
    .restart local v1    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v2    # "filesize":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "typeStr":Ljava/lang/String;
    .restart local v7    # "usr":Ljava/lang/String;
    :cond_2
    const-string v8, "*DIR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    const/4 v5, 0x1

    .restart local v5    # "type":I
    goto :goto_1

    .line 112
    .end local v5    # "type":I
    :cond_3
    const/4 v5, 0x3

    .restart local v5    # "type":I
    goto :goto_1

    .line 142
    .end local v0    # "datestr":Ljava/lang/String;
    .end local v2    # "filesize":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "typeStr":Ljava/lang/String;
    .end local v7    # "usr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 123
    .restart local v0    # "datestr":Ljava/lang/String;
    .restart local v2    # "filesize":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v6    # "typeStr":Ljava/lang/String;
    .restart local v7    # "usr":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 96
    .end local v5    # "type":I
    :catch_1
    move-exception v8

    goto :goto_0
.end method
