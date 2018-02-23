.class final Lextern/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lextern/okhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lextern/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lextern/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lextern/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lextern/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 596
    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lextern/okhttp3/Response;)Lextern/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 597
    invoke-virtual {p1}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Lextern/okhttp3/Response;->protocol()Lextern/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    .line 599
    invoke-virtual {p1}, Lextern/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lextern/okhttp3/Cache$Entry;->code:I

    .line 600
    invoke-virtual {p1}, Lextern/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 602
    invoke-virtual {p1}, Lextern/okhttp3/Response;->handshake()Lextern/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    .line 603
    invoke-virtual {p1}, Lextern/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 604
    invoke-virtual {p1}, Lextern/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 605
    return-void
.end method

.method public constructor <init>(Lextern/okio/Source;)V
    .locals 22
    .param p1, "in"    # Lextern/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    :try_start_0
    invoke-static/range {p1 .. p1}, Lextern/okio/Okio;->buffer(Lextern/okio/Source;)Lextern/okio/BufferedSource;

    move-result-object v14

    .line 543
    .local v14, "source":Lextern/okio/BufferedSource;
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 544
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 545
    new-instance v17, Lextern/okhttp3/Headers$Builder;

    invoke-direct/range {v17 .. v17}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 546
    .local v17, "varyHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    # invokes: Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I
    invoke-static {v14}, Lextern/okhttp3/Cache;->access$1000(Lextern/okio/BufferedSource;)I

    move-result v18

    .line 547
    .local v18, "varyRequestHeaderLineCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 548
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 547
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    .line 552
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lextern/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lextern/okhttp3/internal/http/StatusLine;

    move-result-object v15

    .line 553
    .local v15, "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    iget-object v0, v15, Lextern/okhttp3/internal/http/StatusLine;->protocol:Lextern/okhttp3/Protocol;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    .line 554
    iget v0, v15, Lextern/okhttp3/internal/http/StatusLine;->code:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lextern/okhttp3/Cache$Entry;->code:I

    .line 555
    iget-object v0, v15, Lextern/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 556
    new-instance v12, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v12}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 557
    .local v12, "responseHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    # invokes: Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I
    invoke-static {v14}, Lextern/okhttp3/Cache;->access$1000(Lextern/okio/BufferedSource;)I

    move-result v11

    .line 558
    .local v11, "responseHeaderLineCount":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_1

    .line 559
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lextern/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 558
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 561
    :cond_1
    sget-object v19, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lextern/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 562
    .local v13, "sendRequestMillisString":Ljava/lang/String;
    sget-object v19, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lextern/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 563
    .local v10, "receivedResponseMillisString":Ljava/lang/String;
    sget-object v19, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 564
    sget-object v19, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lextern/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 565
    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :goto_2
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 568
    if-eqz v10, :cond_3

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :goto_3
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 571
    invoke-virtual {v12}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    .line 573
    invoke-direct/range {p0 .. p0}, Lextern/okhttp3/Cache$Entry;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 574
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, "blank":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 576
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "expected \"\" but was \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v4    # "blank":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "receivedResponseMillisString":Ljava/lang/String;
    .end local v11    # "responseHeaderLineCount":I
    .end local v12    # "responseHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    .end local v13    # "sendRequestMillisString":Ljava/lang/String;
    .end local v14    # "source":Lextern/okio/BufferedSource;
    .end local v15    # "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    .end local v17    # "varyHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    .end local v18    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v19

    invoke-interface/range {p1 .. p1}, Lextern/okio/Source;->close()V

    throw v19

    .line 565
    .restart local v7    # "i":I
    .restart local v10    # "receivedResponseMillisString":Ljava/lang/String;
    .restart local v11    # "responseHeaderLineCount":I
    .restart local v12    # "responseHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    .restart local v13    # "sendRequestMillisString":Ljava/lang/String;
    .restart local v14    # "source":Lextern/okio/BufferedSource;
    .restart local v15    # "statusLine":Lextern/okhttp3/internal/http/StatusLine;
    .restart local v17    # "varyHeadersBuilder":Lextern/okhttp3/Headers$Builder;
    .restart local v18    # "varyRequestHeaderLineCount":I
    :cond_2
    const-wide/16 v20, 0x0

    goto :goto_2

    .line 568
    :cond_3
    const-wide/16 v20, 0x0

    goto :goto_3

    .line 578
    .restart local v4    # "blank":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "cipherSuiteString":Ljava/lang/String;
    invoke-static {v6}, Lextern/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/CipherSuite;

    move-result-object v5

    .line 580
    .local v5, "cipherSuite":Lextern/okhttp3/CipherSuite;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lextern/okhttp3/Cache$Entry;->readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;

    move-result-object v9

    .line 581
    .local v9, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lextern/okhttp3/Cache$Entry;->readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;

    move-result-object v8

    .line 582
    .local v8, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v14}, Lextern/okio/BufferedSource;->exhausted()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-interface {v14}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lextern/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;

    move-result-object v16

    .line 585
    .local v16, "tlsVersion":Lextern/okhttp3/TlsVersion;
    :goto_4
    move-object/from16 v0, v16

    invoke-static {v0, v5, v9, v8}, Lextern/okhttp3/Handshake;->get(Lextern/okhttp3/TlsVersion;Lextern/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lextern/okhttp3/Handshake;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    .end local v4    # "blank":Ljava/lang/String;
    .end local v5    # "cipherSuite":Lextern/okhttp3/CipherSuite;
    .end local v6    # "cipherSuiteString":Ljava/lang/String;
    .end local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v16    # "tlsVersion":Lextern/okhttp3/TlsVersion;
    :goto_5
    invoke-interface/range {p1 .. p1}, Lextern/okio/Source;->close()V

    .line 592
    return-void

    .line 582
    .restart local v4    # "blank":Ljava/lang/String;
    .restart local v5    # "cipherSuite":Lextern/okhttp3/CipherSuite;
    .restart local v6    # "cipherSuiteString":Ljava/lang/String;
    .restart local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    .line 587
    .end local v4    # "blank":Ljava/lang/String;
    .end local v5    # "cipherSuite":Lextern/okhttp3/CipherSuite;
    .end local v6    # "cipherSuiteString":Ljava/lang/String;
    .end local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_6
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lextern/okio/BufferedSource;)Ljava/util/List;
    .locals 9
    .param p1, "source"    # Lextern/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    # invokes: Lextern/okhttp3/Cache;->readInt(Lextern/okio/BufferedSource;)I
    invoke-static {p1}, Lextern/okhttp3/Cache;->access$1000(Lextern/okio/BufferedSource;)I

    move-result v4

    .line 663
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 674
    :cond_0
    return-object v6

    .line 666
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 669
    invoke-interface {p1}, Lextern/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    .line 671
    .local v0, "bytes":Lextern/okio/Buffer;
    invoke-static {v5}, Lextern/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v7

    invoke-virtual {v0, v7}, Lextern/okio/Buffer;->write(Lextern/okio/ByteString;)Lextern/okio/Buffer;

    .line 672
    invoke-virtual {v0}, Lextern/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "bytes":Lextern/okio/Buffer;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 676
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V
    .locals 8
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v6, v7}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 685
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 686
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 687
    .local v0, "bytes":[B
    invoke-static {v0}, Lextern/okio/ByteString;->of([B)Lextern/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lextern/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 694
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lextern/okhttp3/Request;Lextern/okhttp3/Response;)Z
    .locals 2
    .param p1, "request"    # Lextern/okhttp3/Request;
    .param p2, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 697
    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-static {p2, v0, p1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyMatches(Lextern/okhttp3/Response;Lextern/okhttp3/Headers;Lextern/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lextern/okhttp3/Response;
    .locals 6
    .param p1, "snapshot"    # Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .prologue
    .line 703
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lextern/okhttp3/Request$Builder;

    invoke-direct {v3}, Lextern/okhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lextern/okhttp3/Request$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lextern/okhttp3/Request$Builder;->method(Ljava/lang/String;Lextern/okhttp3/RequestBody;)Lextern/okhttp3/Request$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Request$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v0

    .line 710
    .local v0, "cacheRequest":Lextern/okhttp3/Request;
    new-instance v3, Lextern/okhttp3/Response$Builder;

    invoke-direct {v3}, Lextern/okhttp3/Response$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lextern/okhttp3/Response$Builder;->request(Lextern/okhttp3/Request;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->protocol(Lextern/okhttp3/Protocol;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget v4, p0, Lextern/okhttp3/Cache$Entry;->code:I

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->code(I)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    new-instance v4, Lextern/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v2, v1}, Lextern/okhttp3/Cache$CacheResponseBody;-><init>(Lextern/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->body(Lextern/okhttp3/ResponseBody;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3, v4}, Lextern/okhttp3/Response$Builder;->handshake(Lextern/okhttp3/Handshake;)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-virtual {v3, v4, v5}, Lextern/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-virtual {v3, v4, v5}, Lextern/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lextern/okhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(Lextern/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 8
    .param p1, "editor"    # Lextern/okhttp3/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 608
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lextern/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lextern/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lextern/okio/Okio;->buffer(Lextern/okio/Sink;)Lextern/okio/BufferedSink;

    move-result-object v1

    .line 610
    .local v1, "sink":Lextern/okio/BufferedSink;
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 612
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 614
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 616
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3}, Lextern/okhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 617
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3, v0}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->varyHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v4, v0}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    new-instance v3, Lextern/okhttp3/internal/http/StatusLine;

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->protocol:Lextern/okhttp3/Protocol;

    iget v5, p0, Lextern/okhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Lextern/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lextern/okhttp3/internal/http/StatusLine;-><init>(Lextern/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v3}, Lextern/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 625
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 627
    const/4 v0, 0x0

    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3}, Lextern/okhttp3/Headers;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 628
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v3, v0}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    iget-object v4, p0, Lextern/okhttp3/Cache$Entry;->responseHeaders:Lextern/okhttp3/Headers;

    invoke-virtual {v4, v0}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 633
    :cond_1
    sget-object v3, Lextern/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    iget-wide v4, p0, Lextern/okhttp3/Cache$Entry;->sentRequestMillis:J

    invoke-interface {v3, v4, v5}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 637
    sget-object v3, Lextern/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    iget-wide v4, p0, Lextern/okhttp3/Cache$Entry;->receivedResponseMillis:J

    invoke-interface {v3, v4, v5}, Lextern/okio/BufferedSink;->writeDecimalLong(J)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 642
    invoke-direct {p0}, Lextern/okhttp3/Cache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    invoke-interface {v1, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 644
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3}, Lextern/okhttp3/Handshake;->cipherSuite()Lextern/okhttp3/CipherSuite;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 646
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3}, Lextern/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lextern/okhttp3/Cache$Entry;->writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V

    .line 647
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3}, Lextern/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lextern/okhttp3/Cache$Entry;->writeCertList(Lextern/okio/BufferedSink;Ljava/util/List;)V

    .line 649
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3}, Lextern/okhttp3/Handshake;->tlsVersion()Lextern/okhttp3/TlsVersion;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 650
    iget-object v3, p0, Lextern/okhttp3/Cache$Entry;->handshake:Lextern/okhttp3/Handshake;

    invoke-virtual {v3}, Lextern/okhttp3/Handshake;->tlsVersion()Lextern/okhttp3/TlsVersion;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lextern/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lextern/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v7}, Lextern/okio/BufferedSink;->writeByte(I)Lextern/okio/BufferedSink;

    .line 654
    :cond_2
    invoke-interface {v1}, Lextern/okio/BufferedSink;->close()V

    .line 655
    return-void
.end method
