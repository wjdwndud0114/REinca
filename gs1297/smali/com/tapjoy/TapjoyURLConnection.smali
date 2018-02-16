.class public Lcom/tapjoy/TapjoyURLConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_GET:I = 0x0

.field public static final TYPE_POST:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 223
    :try_start_0
    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v2, "TapjoyURLConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestURL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {v2}, Lcom/tapjoy/internal/em;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 229
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 230
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 231
    const-string v2, "content-length"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :goto_0
    const-string v1, "TapjoyURLConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content-length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const-string v2, "TapjoyURLConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 29
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 54
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "getRedirectOnly"    # Z
    .param p6, "postContentType"    # Ljava/lang/String;
    .param p7, "postContent"    # Ljava/lang/String;

    .prologue
    .line 69
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/tapjoy/TapjoyHttpURLResponse;

    invoke-direct {v6}, Lcom/tapjoy/TapjoyHttpURLResponse;-><init>()V

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v5, 0x0

    .line 77
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string v7, "TapjoyURLConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, "http "

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string v2, "get"

    :goto_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v2}, Lcom/tapjoy/internal/em;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    if-eqz p4, :cond_0

    .line 86
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 88
    :cond_0
    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    if-eqz p5, :cond_4

    .line 92
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .line 172
    :goto_2
    const-string v4, "TapjoyURLConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    iput v2, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 180
    if-eqz v3, :cond_1

    :try_start_2
    iget-object v2, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 194
    :catch_1
    move-exception v2

    .line 196
    const-string v3, "TapjoyURLConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception trying to get error code/content: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    :goto_4
    const-string v2, "TapjoyURLConnection"

    const-string v3, "--------------------"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "TapjoyURLConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "TapjoyURLConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 204
    const-string v2, "TapjoyURLConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "redirectURL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    const-string v2, "TapjoyURLConnection"

    const-string v3, "--------------------"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v6

    .line 79
    :cond_3
    :try_start_3
    const-string v2, "post"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 98
    :cond_4
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 100
    :try_start_4
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 101
    if-eqz p7, :cond_5

    .line 102
    const-string v3, "TapjoyURLConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Content-Type: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "TapjoyURLConnection"

    const-string v4, "Content:"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "TapjoyURLConnection"

    move-object/from16 v0, p7

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "Content-Type"

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "Connection"

    const-string v4, "close"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 110
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 111
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 115
    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 120
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->headerFields:Ljava/util/Map;

    .line 122
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->date:J

    .line 123
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->expires:J

    .line 126
    if-nez p4, :cond_b

    .line 129
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v3

    .line 133
    :goto_5
    if-nez p4, :cond_7

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    :goto_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 142
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    .line 145
    :cond_7
    iget v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v5, 0x12e

    if-ne v3, v5, :cond_8

    .line 146
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    .line 148
    :cond_8
    const-string v3, "content-length"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 150
    if-eqz v3, :cond_9

    .line 154
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->contentLength:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 162
    :cond_9
    :goto_7
    if-eqz v4, :cond_1

    .line 164
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_4

    .line 156
    :catch_2
    move-exception v3

    .line 158
    const-string v5, "TapjoyURLConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    .line 191
    :cond_a
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 170
    :catch_3
    move-exception v2

    goto/16 :goto_2

    :cond_b
    move-object v4, v5

    goto :goto_5
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 34
    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;I)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 39
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;I)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "postJsonData"    # Ljava/lang/String;

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 64
    if-eqz p2, :cond_0

    invoke-static {p2, v4}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    const-string v6, "application/json;charset=utf-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 59
    if-eqz p2, :cond_0

    invoke-static {p2, v4}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    const-string v6, "application/x-www-form-urlencoded"

    invoke-static {p4, v4}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
