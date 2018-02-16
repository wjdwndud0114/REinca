.class public Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "MVSFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field static final FILE_LIST_REGEX:Ljava/lang/String; = "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

.field static final FILE_LIST_TYPE:I = 0x0

.field static final JES_LEVEL_1_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

.field static final JES_LEVEL_1_LIST_TYPE:I = 0x3

.field static final JES_LEVEL_2_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

.field static final JES_LEVEL_2_LIST_TYPE:I = 0x4

.field static final MEMBER_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

.field static final MEMBER_LIST_TYPE:I = 0x1

.field static final UNIX_LIST_TYPE:I = 0x2

.field static final UNKNOWN_LIST_TYPE:I = -0x1


# instance fields
.field private isType:I

.field private unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 217
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    .line 218
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 219
    return-void
.end method

.method private parseFileList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 5
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 287
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "dsorg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 292
    const-string v4, "PS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_0
    move v2, v3

    .line 306
    .end local v0    # "dsorg":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return v2

    .line 295
    .restart local v0    # "dsorg":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v4, "PO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PO-E"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :cond_2
    invoke-virtual {p1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_0
.end method

.method private parseJeslevel1List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 4
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OUTPUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 402
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 405
    const/4 v1, 0x1

    .line 409
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private parseJeslevel2List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 4
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OUTPUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 434
    const/4 v1, 0x1

    .line 438
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private parseMemberList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 329
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "datestr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 336
    :try_start_0
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "datestr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return v3

    .line 337
    .restart local v0    # "datestr":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move v3, v4

    .line 341
    goto :goto_0

    .end local v0    # "datestr":Ljava/lang/String;
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 346
    goto :goto_0
.end method

.method private parseSimpleEntry(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 359
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 360
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 361
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 362
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 364
    const/4 v1, 0x1

    .line 366
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private parseUnixList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 378
    if-nez p1, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 495
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MVS"

    const-string v2, "yyyy/MM/dd HH:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "isParsed":Z
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 237
    .local v0, "f":Lorg/apache/commons/net/ftp/FTPFile;
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-nez v2, :cond_2

    .line 238
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseFileList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    .line 252
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 253
    const/4 v0, 0x0

    .line 256
    :cond_1
    return-object v0

    .line 239
    :cond_2
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 240
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseMemberList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    .line 241
    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseSimpleEntry(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 244
    :cond_3
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 245
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseUnixList(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 246
    :cond_4
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 247
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel1List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 248
    :cond_5
    iget v2, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 249
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel2List(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    .prologue
    .local p1, "orig":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 452
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 453
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .local v0, "header":Ljava/lang/String;
    const-string v1, "Volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "Dsname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 455
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 456
    const-string v1, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    .line 474
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-eq v1, v4, :cond_0

    .line 475
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 479
    .end local v0    # "header":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 457
    .restart local v0    # "header":Ljava/lang/String;
    :cond_1
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 458
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 459
    const-string v1, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 460
    :cond_2
    const-string v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 461
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 462
    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    goto :goto_0

    .line 463
    :cond_3
    const-string v1, "Spool Files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 464
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 465
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 466
    :cond_4
    const-string v1, "JOBNAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "JOBID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_5

    .line 468
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 469
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 471
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    goto :goto_0
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 487
    iput p1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    .line 488
    return-void
.end method
