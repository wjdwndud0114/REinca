.class public Lorg/apache/commons/net/ftp/FTPClient;
.super Lorg/apache/commons/net/ftp/FTP;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/FTPClient$CSL;,
        Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;
    }
.end annotation


# static fields
.field public static final ACTIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x0

.field public static final ACTIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x1

.field public static final FTP_SYSTEM_TYPE:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType"

.field public static final FTP_SYSTEM_TYPE_DEFAULT:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType.default"

.field public static final PASSIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x2

.field public static final PASSIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x3

.field public static final SYSTEM_TYPE_PROPERTIES:Ljava/lang/String; = "/systemType.properties"

.field private static final __PARMS_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private __activeExternalHost:Ljava/net/InetAddress;

.field private __activeMaxPort:I

.field private __activeMinPort:I

.field private __autodetectEncoding:Z

.field private __bufferSize:I

.field private __configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field private __controlKeepAliveReplyTimeout:I

.field private __controlKeepAliveTimeout:J

.field private __copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

.field private __dataConnectionMode:I

.field private __dataTimeout:I

.field private __entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private __entryParserKey:Ljava/lang/String;

.field private __featuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private __fileFormat:I

.field private __fileStructure:I

.field private __fileTransferMode:I

.field private __fileType:I

.field private __listHiddenFiles:Z

.field private __parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

.field private __passiveHost:Ljava/lang/String;

.field private __passiveLocalHost:Ljava/net/InetAddress;

.field private __passiveNatWorkaround:Z

.field private __passivePort:I

.field private final __random:Ljava/util/Random;

.field private __receiveDataSocketBufferSize:I

.field private __remoteVerificationEnabled:Z

.field private __reportActiveExternalHost:Ljava/net/InetAddress;

.field private __restartOffset:J

.field private __sendDataSocketBufferSize:I

.field private __systemName:Ljava/lang/String;

.field private __useEPSVwithIPv4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient;->__PARMS_PAT:Ljava/util/regex/Pattern;

    .line 403
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;-><init>()V

    .line 391
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    .line 396
    iput-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveNatWorkaround:Z

    .line 406
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    .line 459
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    .line 461
    iput-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    .line 462
    new-instance v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 463
    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 464
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    .line 465
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    .line 466
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__random:Ljava/util/Random;

    .line 467
    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    .line 468
    return-void
.end method

.method private __initDefaults()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 473
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    .line 474
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    .line 476
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    .line 477
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__reportActiveExternalHost:Ljava/net/InetAddress;

    .line 478
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    .line 479
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    .line 480
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    .line 481
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileStructure:I

    .line 482
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    .line 483
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileTransferMode:I

    .line 484
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    .line 485
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    .line 486
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    .line 488
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    .line 489
    return-void
.end method

.method private __mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 2
    .param p1, "local"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .prologue
    .line 3714
    if-nez p1, :cond_1

    .line 3715
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 3724
    .end local p1    # "local":Lorg/apache/commons/net/io/CopyStreamListener;
    :cond_0
    :goto_0
    return-object p1

    .line 3717
    .restart local p1    # "local":Lorg/apache/commons/net/io/CopyStreamListener;
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    if-eqz v1, :cond_0

    .line 3721
    new-instance v0, Lorg/apache/commons/net/io/CopyStreamAdapter;

    invoke-direct {v0}, Lorg/apache/commons/net/io/CopyStreamAdapter;-><init>()V

    .line 3722
    .local v0, "merged":Lorg/apache/commons/net/io/CopyStreamAdapter;
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 3723
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    move-object p1, v0

    .line 3724
    goto :goto_0
.end method

.method static __parsePathname(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "reply"    # Ljava/lang/String;

    .prologue
    .line 510
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "param":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 515
    .local v3, "quoteSeen":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 516
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 517
    .local v0, "ch":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_1

    .line 518
    if-eqz v3, :cond_0

    .line 519
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const/4 v3, 0x0

    .line 515
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 526
    :cond_1
    if-eqz v3, :cond_3

    .line 527
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "quoteSeen":Z
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    return-object v2

    .line 529
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v3    # "quoteSeen":Z
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 532
    .end local v0    # "ch":C
    :cond_4
    if-eqz v3, :cond_2

    .line 533
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private __storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "command"    # Lorg/apache/commons/net/ftp/FTPCmd;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method private __storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "command"    # Lorg/apache/commons/net/ftp/FTPCmd;
    .param p2, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private getActivePort()I
    .locals 3

    .prologue
    .line 1366
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-lt v0, v1, :cond_1

    .line 1368
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-ne v0, v1, :cond_0

    .line 1369
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    .line 1377
    :goto_0
    return v0

    .line 1372
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__random:Ljava/util/Random;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1377
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 3651
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    if-lez v0, :cond_0

    .line 3652
    new-instance v0, Ljava/io/BufferedInputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3654
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 3644
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    if-lez v0, :cond_0

    .line 3645
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 3647
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private getHostAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    .line 1396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOverrideProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    return-object v0
.end method

.method private getReportHostAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__reportActiveExternalHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__reportActiveExternalHost:Ljava/net/InetAddress;

    .line 1412
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private initFeatureMap()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2323
    iget-object v10, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    if-nez v10, :cond_0

    .line 2325
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->feat()I

    move-result v10

    invoke-static {v10}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v6

    .line 2327
    .local v6, "success":Z
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    .line 2328
    if-nez v6, :cond_1

    .line 2329
    const/4 v9, 0x0

    .line 2352
    .end local v6    # "success":Z
    :cond_0
    return v9

    .line 2331
    .restart local v6    # "success":Z
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 2332
    .local v4, "l":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2334
    const-string v7, ""

    .line 2335
    .local v7, "value":Ljava/lang/String;
    const/16 v10, 0x20

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 2336
    .local v8, "varsep":I
    if-lez v8, :cond_4

    .line 2337
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2338
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2342
    :goto_1
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2343
    iget-object v10, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2344
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 2345
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2346
    .restart local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2331
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "varsep":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2340
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v8    # "varsep":I
    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/String;
    goto :goto_1
.end method

.method private initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 4
    .param p1, "parser"    # Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .param p2, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3293
    sget-object v2, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 3295
    .local v1, "socket":Ljava/net/Socket;
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 3296
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    if-nez v1, :cond_0

    .line 3309
    :goto_0
    return-object v0

    .line 3302
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3305
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 3308
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    goto :goto_0

    .line 3305
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v2
.end method

.method private initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 4
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3321
    sget-object v2, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 3322
    .local v1, "socket":Ljava/net/Socket;
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-static {}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 3323
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    if-nez v1, :cond_0

    .line 3335
    :goto_0
    return-object v0

    .line 3329
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 3333
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    goto :goto_0

    .line 3332
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 3333
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    throw v2
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_()V

    .line 925
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    .line 928
    iget-boolean v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    if-eqz v2, :cond_2

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 931
    .local v1, "oldReplyLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    .line 932
    .local v0, "oldReplyCode":I
    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    .line 935
    new-instance v2, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_controlInput_:Ljava/io/BufferedReader;

    .line 937
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 941
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 942
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 943
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    .line 945
    .end local v0    # "oldReplyCode":I
    .end local v1    # "oldReplyLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "command"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 784
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    move-object v3, v5

    .line 917
    :cond_0
    :goto_0
    return-object v3

    .line 789
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v1, v4, Ljava/net/Inet6Address;

    .line 793
    .local v1, "isInet6Address":Z
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    if-nez v4, :cond_b

    .line 797
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getActivePort()I

    move-result v6

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4, v6, v0, v7}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2

    .line 807
    .local v2, "server":Ljava/net/ServerSocket;
    if-eqz v1, :cond_2

    .line 808
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/net/ftp/FTPClient;->eprt(Ljava/net/InetAddress;I)I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 845
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v3, v5

    goto :goto_0

    .line 812
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/net/ftp/FTPClient;->port(Ljava/net/InetAddress;I)I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 845
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v3, v5

    goto :goto_0

    .line 817
    :cond_3
    :try_start_2
    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    .line 845
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v3, v5

    goto :goto_0

    .line 821
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    .line 845
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v3, v5

    goto :goto_0

    .line 829
    :cond_5
    :try_start_4
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    if-ltz v4, :cond_6

    .line 830
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    invoke-virtual {v2, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 832
    :cond_6
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 835
    .local v3, "socket":Ljava/net/Socket;
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    if-ltz v4, :cond_7

    .line 836
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 838
    :cond_7
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    if-lez v4, :cond_8

    .line 839
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 841
    :cond_8
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    if-lez v4, :cond_9

    .line 842
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 845
    :cond_9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 908
    .end local v2    # "server":Ljava/net/ServerSocket;
    :cond_a
    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 910
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 912
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host attempting data connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not same as server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 845
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "server":Ljava/net/ServerSocket;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    throw v4

    .line 858
    .end local v2    # "server":Ljava/net/ServerSocket;
    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v1, :cond_11

    .line 859
    .local v0, "attemptEPSV":Z
    :cond_c
    :goto_1
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->epsv()I

    move-result v4

    const/16 v7, 0xe5

    if-ne v4, v7, :cond_12

    .line 861
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/FTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    .line 875
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .line 876
    .restart local v3    # "socket":Ljava/net/Socket;
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    if-lez v4, :cond_d

    .line 877
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 879
    :cond_d
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    if-lez v4, :cond_e

    .line 880
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 882
    :cond_e
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    if-eqz v4, :cond_f

    .line 883
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    invoke-direct {v4, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 890
    :cond_f
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    if-ltz v4, :cond_10

    .line 891
    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 894
    :cond_10
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    iget v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    invoke-direct {v4, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->connectTimeout:I

    invoke-virtual {v3, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 895
    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_15

    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v4

    if-nez v4, :cond_15

    .line 897
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    move-object v3, v5

    .line 898
    goto/16 :goto_0

    .end local v0    # "attemptEPSV":Z
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_11
    move v0, v6

    .line 858
    goto :goto_1

    .line 865
    .restart local v0    # "attemptEPSV":Z
    :cond_12
    if-eqz v1, :cond_13

    move-object v3, v5

    .line 866
    goto/16 :goto_0

    .line 869
    :cond_13
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pasv()I

    move-result v4

    const/16 v7, 0xe3

    if-eq v4, v7, :cond_14

    move-object v3, v5

    .line 870
    goto/16 :goto_0

    .line 872
    :cond_14
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    goto :goto_2

    .line 901
    .restart local v3    # "socket":Ljava/net/Socket;
    :cond_15
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 903
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    move-object v3, v5

    .line 904
    goto/16 :goto_0
.end method

.method protected _openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "command"    # Lorg/apache/commons/net/ftp/FTPCmd;
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method protected _parseExtendedPassiveModeReply(Ljava/lang/String;)V
    .locals 9
    .param p1, "reply"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .prologue
    .line 589
    const/16 v6, 0x28

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 593
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 594
    .local v0, "delim1":C
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 595
    .local v1, "delim2":C
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 596
    .local v2, "delim3":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 598
    .local v3, "delim4":C
    if-ne v0, v1, :cond_0

    if-ne v1, v2, :cond_0

    if-eq v2, v3, :cond_1

    .line 600
    :cond_0
    new-instance v6, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse extended passive host information.\nServer Reply: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 607
    :cond_1
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 617
    .local v5, "port":I
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 618
    iput v5, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    .line 619
    return-void

    .line 609
    .end local v5    # "port":I
    :catch_0
    move-exception v4

    .line 611
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse extended passive host information.\nServer Reply: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected _parsePassiveModeReply(Ljava/lang/String;)V
    .locals 10
    .param p1, "reply"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .prologue
    .line 546
    sget-object v7, Lorg/apache/commons/net/ftp/FTPClient;->__PARMS_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 547
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_0

    .line 548
    new-instance v7, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse passive host information.\nServer Reply: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 552
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2c

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 556
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 557
    .local v4, "oct1":I
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 558
    .local v5, "oct2":I
    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v5

    iput v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    iget-boolean v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveNatWorkaround:Z

    if-eqz v7, :cond_1

    .line 568
    :try_start_1
    iget-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 570
    .local v1, "host":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 572
    .local v6, "remote":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-nez v7, :cond_1

    .line 573
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "hostAddress":Ljava/lang/String;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Replacing site local address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/net/ftp/FTPClient;->fireReplyReceived(ILjava/lang/String;)V

    .line 576
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 584
    .end local v1    # "host":Ljava/net/InetAddress;
    .end local v2    # "hostAddress":Ljava/lang/String;
    .end local v6    # "remote":Ljava/net/InetAddress;
    :cond_1
    return-void

    .line 560
    .end local v4    # "oct1":I
    .end local v5    # "oct2":I
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse passive port information.\nServer Reply: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 579
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "oct1":I
    .restart local v5    # "oct2":I
    :catch_1
    move-exception v0

    .line 580
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v7, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse passive host information.\nServer Reply: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected _retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1854
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v10

    .line 1856
    .local v10, "socket":Ljava/net/Socket;
    if-nez v10, :cond_0

    .line 1886
    :goto_0
    return v9

    .line 1860
    :cond_0
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 1861
    .local v1, "input":Ljava/io/InputStream;
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v2, :cond_1

    .line 1862
    new-instance v8, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-direct {v8, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1    # "input":Ljava/io/InputStream;
    .local v8, "input":Ljava/io/InputStream;
    move-object v1, v8

    .line 1865
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :cond_1
    const/4 v0, 0x0

    .line 1866
    .local v0, "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1867
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    .end local v0    # "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V

    .line 1873
    .restart local v0    # "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1878
    invoke-static {v10}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1879
    if-eqz v0, :cond_3

    .line 1880
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    .line 1885
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v9

    .line 1886
    .local v9, "ok":Z
    goto :goto_0

    .line 1877
    .end local v9    # "ok":Z
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1878
    invoke-static {v10}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1879
    if-eqz v0, :cond_4

    .line 1880
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    :cond_4
    throw v2
.end method

.method protected _retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1927
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 1929
    .local v2, "socket":Ljava/net/Socket;
    if-nez v2, :cond_0

    .line 1930
    const/4 v3, 0x0

    .line 1945
    :goto_0
    return-object v3

    .line 1933
    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1934
    .local v0, "input":Ljava/io/InputStream;
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v3, :cond_1

    .line 1942
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 1943
    new-instance v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .local v1, "input":Ljava/io/InputStream;
    move-object v0, v1

    .line 1945
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-direct {v3, v2, v0}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected _storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 12
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 633
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v11

    .line 635
    .local v11, "socket":Ljava/net/Socket;
    if-nez v11, :cond_0

    .line 673
    :goto_0
    return v9

    .line 639
    :cond_0
    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 641
    .local v2, "output":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v1, :cond_1

    .line 642
    new-instance v10, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-direct {v10, v2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v2    # "output":Ljava/io/OutputStream;
    .local v10, "output":Ljava/io/OutputStream;
    move-object v2, v10

    .line 645
    .end local v10    # "output":Ljava/io/OutputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :cond_1
    const/4 v0, 0x0

    .line 646
    .local v0, "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 647
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    .end local v0    # "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    invoke-direct {v0, p0, v4, v5, v1}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V

    .line 653
    .restart local v0    # "csl":Lorg/apache/commons/net/ftp/FTPClient$CSL;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 667
    invoke-virtual {v11}, Ljava/net/Socket;->close()V

    .line 668
    if-eqz v0, :cond_3

    .line 669
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    .line 672
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v9

    .line 673
    .local v9, "ok":Z
    goto :goto_0

    .line 657
    .end local v9    # "ok":Z
    :catch_0
    move-exception v8

    .line 659
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v11}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 660
    if-eqz v0, :cond_4

    .line 661
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    .line 663
    :cond_4
    throw v8
.end method

.method protected _storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 690
    .local v2, "socket":Ljava/net/Socket;
    if-nez v2, :cond_0

    .line 691
    const/4 v3, 0x0

    .line 707
    :goto_0
    return-object v3

    .line 694
    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 695
    .local v0, "output":Ljava/io/OutputStream;
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v3, :cond_1

    .line 703
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 704
    new-instance v1, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v0    # "output":Ljava/io/OutputStream;
    .local v1, "output":Ljava/io/OutputStream;
    move-object v0, v1

    .line 707
    .end local v1    # "output":Ljava/io/OutputStream;
    .restart local v0    # "output":Ljava/io/OutputStream;
    :cond_1
    new-instance v3, Lorg/apache/commons/net/io/SocketOutputStream;

    invoke-direct {v3, v2, v0}, Lorg/apache/commons/net/io/SocketOutputStream;-><init>(Ljava/net/Socket;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public abort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2581
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->abor()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public allocate(I)Z
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2210
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->allo(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public allocate(II)Z
    .locals 1
    .param p1, "bytes"    # I
    .param p2, "recordSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2371
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->allo(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2038
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public appendFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2068
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public changeToParentDirectory()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->cdup()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->cwd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1813
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .prologue
    .line 3512
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 3513
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2599
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->dele(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->disconnect()V

    .line 987
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    .line 988
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2393
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public doCommandAsStrings(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2414
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    .line 2415
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 2416
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v1

    .line 2418
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterLocalActiveMode()V
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    .line 1211
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 1212
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    .line 1213
    return-void
.end method

.method public enterLocalPassiveMode()V
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    .line 1236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 1237
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    .line 1238
    return-void
.end method

.method public enterRemoteActiveMode(Ljava/net/InetAddress;I)Z
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1268
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->port(Ljava/net/InetAddress;I)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    .line 1271
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    .line 1272
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    .line 1275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterRemotePassiveMode()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pasv()I

    move-result v1

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    .line 1309
    :goto_0
    return v0

    .line 1306
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    .line 1307
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2267
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->featureValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2269
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2271
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public featureValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2245
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2252
    :cond_0
    :goto_0
    return-object v1

    .line 2248
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2249
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2250
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public features()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2231
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->feat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getAutodetectUTF8()Z
    .locals 1

    .prologue
    .line 3745
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 3459
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    return v0
.end method

.method public getControlKeepAliveReplyTimeout()I
    .locals 1

    .prologue
    .line 3624
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    return v0
.end method

.method public getControlKeepAliveTimeout()J
    .locals 4

    .prologue
    .line 3605
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCopyStreamListener()Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 1

    .prologue
    .line 3584
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-object v0
.end method

.method public getDataConnectionMode()I
    .locals 1

    .prologue
    .line 1356
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    return v0
.end method

.method protected getListArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    .line 3342
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getListHiddenFiles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3344
    if-eqz p1, :cond_1

    .line 3346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3347
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "-a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3357
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "pathname":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 3353
    .restart local p1    # "pathname":Ljava/lang/String;
    :cond_1
    const-string p1, "-a"

    goto :goto_0
.end method

.method public getListHiddenFiles()Z
    .locals 1

    .prologue
    .line 3534
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    return v0
.end method

.method public getModificationTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3416
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mdtm(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3417
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 3419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassiveHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveLocalIPAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPassivePort()I
    .locals 1

    .prologue
    .line 1343
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    return v0
.end method

.method public getReceiveDataSocketBufferSize()I
    .locals 1

    .prologue
    .line 3499
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    return v0
.end method

.method public getRestartOffset()J
    .locals 2

    .prologue
    .line 2538
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    return-wide v0
.end method

.method public getSendDataSocketBufferSize()I
    .locals 1

    .prologue
    .line 3479
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3375
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->stat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3376
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 3378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3397
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stat(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 3400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3756
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->syst()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    .line 3759
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2711
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2712
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->syst()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2714
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    .line 2725
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    return-object v1

    .line 2717
    :cond_1
    const-string v1, "org.apache.commons.net.ftp.systemType.default"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, "systDefault":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2719
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    goto :goto_0

    .line 2721
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine system type - response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2287
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2288
    const/4 v0, 0x0

    .line 2290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2309
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return v1

    .line 2312
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2313
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2314
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public initiateListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3115
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3171
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 5
    .param p1, "parserKey"    # Ljava/lang/String;
    .param p2, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3234
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3235
    :cond_0
    if-eqz p1, :cond_2

    .line 3238
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 3240
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    .line 3271
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v3

    return-object v3

    .line 3245
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz v3, :cond_3

    .line 3246
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-interface {v3, v4}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 3248
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    goto :goto_0

    .line 3254
    :cond_3
    const-string v3, "org.apache.commons.net.ftp.systemType"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3255
    .local v2, "systemType":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 3256
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemType()Ljava/lang/String;

    move-result-object v2

    .line 3257
    invoke-static {}, Lorg/apache/commons/net/ftp/FTPClient;->getOverrideProperties()Ljava/util/Properties;

    move-result-object v1

    .line 3258
    .local v1, "override":Ljava/util/Properties;
    if-eqz v1, :cond_4

    .line 3259
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3260
    .local v0, "newType":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 3261
    move-object v2, v0

    .line 3265
    .end local v0    # "newType":Ljava/lang/String;
    .end local v1    # "override":Ljava/util/Properties;
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 3266
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public isRemoteVerificationEnabled()Z
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    return v0
.end method

.method public isUseEPSVwithIPv4()Z
    .locals 1

    .prologue
    .line 3544
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    return v0
.end method

.method public listDirectories()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3035
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3076
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2977
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2930
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    .line 2931
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/commons/net/ftp/FTPFileFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2992
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    .line 2993
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2745
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2746
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 2748
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2768
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->help(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2769
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    .line 2771
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2825
    sget-object v6, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v4

    .line 2827
    .local v4, "socket":Ljava/net/Socket;
    if-nez v4, :cond_1

    .line 2849
    :cond_0
    :goto_0
    return-object v5

    .line 2831
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2834
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2836
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2837
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2840
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2841
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 2843
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2845
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 2846
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->user(Ljava/lang/String;)I

    .line 1036
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x1

    .line 1046
    :goto_0
    return v0

    .line 1042
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    const/4 v0, 0x0

    goto :goto_0

    .line 1046
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->pass(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->user(Ljava/lang/String;)I

    .line 1072
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1079
    goto :goto_0

    .line 1082
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->pass(Ljava/lang/String;)I

    .line 1084
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1089
    goto :goto_0

    .line 1092
    :cond_3
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/ftp/FTPClient;->acct(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public makeDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mkd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public mlistDir()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2463
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    .line 2464
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public mlistDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/commons/net/ftp/FTPFileFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2478
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    .line 2479
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public mlistFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2432
    sget-object v2, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    .line 2433
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 2434
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, "entry":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 2437
    .end local v0    # "entry":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public printWorkingDirectory()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2658
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pwd()I

    move-result v0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    .line 2659
    const/4 v0, 0x0

    .line 2662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClient;->__parsePathname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method reinitialize()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->rein()I

    .line 1185
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    .line 1192
    const/4 v0, 0x1

    .line 1195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteAppend(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1760
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1762
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->appe(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    .line 1764
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteRetrieve(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1649
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1651
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->retr(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    .line 1653
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStore(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1678
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    .line 1680
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStoreUnique()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1732
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1734
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->stou()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    .line 1736
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStoreUnique(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1704
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1706
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stou(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    .line 1708
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2618
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->rmd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2559
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->rnfr(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2560
    const/4 v0, 0x0

    .line 2563
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->rnto(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected restart(J)Z
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    .line 2504
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->rest(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    return v0
.end method

.method public retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1845
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1918
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sendNoOp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2790
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendSiteCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2680
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->site(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setActiveExternalIPAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    .line 1440
    return-void
.end method

.method public setActivePortRange(II)V
    .locals 0
    .param p1, "minPort"    # I
    .param p2, "maxPort"    # I

    .prologue
    .line 1425
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    .line 1426
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    .line 1427
    return-void
.end method

.method public setAutodetectUTF8(Z)V
    .locals 0
    .param p1, "autodetect"    # Z

    .prologue
    .line 3736
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    .line 3737
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufSize"    # I

    .prologue
    .line 3451
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    .line 3452
    return-void
.end method

.method public setControlKeepAliveReplyTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 3616
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    .line 3617
    return-void
.end method

.method public setControlKeepAliveTimeout(J)V
    .locals 3
    .param p1, "controlIdle"    # J

    .prologue
    .line 3596
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    .line 3597
    return-void
.end method

.method public setCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;

    .prologue
    .line 3574
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    .line 3575
    return-void
.end method

.method public setDataTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 960
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    .line 961
    return-void
.end method

.method public setFileStructure(I)Z
    .locals 1
    .param p1, "structure"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stru(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileStructure:I

    .line 1599
    const/4 v0, 0x1

    .line 1601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileTransferMode(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mode(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileTransferMode:I

    .line 1626
    const/4 v0, 0x1

    .line 1628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileType(I)Z
    .locals 1
    .param p1, "fileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->type(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    .line 1522
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    .line 1523
    const/4 v0, 0x1

    .line 1525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileType(II)Z
    .locals 1
    .param p1, "fileType"    # I
    .param p2, "formatOrByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->type(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    .line 1571
    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    .line 1572
    const/4 v0, 0x1

    .line 1574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListHiddenFiles(Z)V
    .locals 0
    .param p1, "listHiddenFiles"    # Z

    .prologue
    .line 3525
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    .line 3526
    return-void
.end method

.method public setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "timeval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3441
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->mfmt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setParserFactory(Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;)V
    .locals 0
    .param p1, "parserFactory"    # Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .prologue
    .line 973
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    .line 974
    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1451
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    .line 1452
    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1462
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveLocalHost:Ljava/net/InetAddress;

    .line 1463
    return-void
.end method

.method public setPassiveNatWorkaround(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3640
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveNatWorkaround:Z

    .line 3641
    return-void
.end method

.method public setReceieveDataSocketBufferSize(I)V
    .locals 0
    .param p1, "bufSize"    # I

    .prologue
    .line 3490
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__receiveDataSocketBufferSize:I

    .line 3491
    return-void
.end method

.method public setRemoteVerificationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1002
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    .line 1003
    return-void
.end method

.method public setReportActiveExternalIPAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1487
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__reportActiveExternalHost:Ljava/net/InetAddress;

    .line 1488
    return-void
.end method

.method public setRestartOffset(J)V
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 2525
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2526
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    .line 2528
    :cond_0
    return-void
.end method

.method public setSendDataSocketBufferSize(I)V
    .locals 0
    .param p1, "bufSize"    # I

    .prologue
    .line 3470
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__sendDataSocketBufferSize:I

    .line 3471
    return-void
.end method

.method public setUseEPSVwithIPv4(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 3563
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    .line 3564
    return-void
.end method

.method public storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1976
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2007
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public storeUniqueFile(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2162
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeUniqueFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2100
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeUniqueFileStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2192
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public storeUniqueFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2133
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public structureMount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->smnt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method
