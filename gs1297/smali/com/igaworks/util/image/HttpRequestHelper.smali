.class public Lcom/igaworks/util/image/HttpRequestHelper;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"


# instance fields
.field httpConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/igaworks/util/image/HttpRequestHelper;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/igaworks/util/image/HttpRequestHelper;

    invoke-direct {v0}, Lcom/igaworks/util/image/HttpRequestHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p1, "fileURL"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    .line 22
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/16 v6, 0x3a98

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 23
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/16 v6, 0x3a98

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 24
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 29
    .local v3, "responseCode":I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 55
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 57
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2, p2}, Lcom/igaworks/util/image/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-static {v2}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    iget-object v5, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    return-object p2

    .line 59
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-static {v2}, Lcom/igaworks/util/image/IOUtils;->close(Ljava/io/Closeable;)V

    throw v5
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e1":Ljava/net/SocketTimeoutException;
    :try_start_4
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v5, :cond_0

    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttpRequestHelper SocketTimeoutException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .end local v0    # "e1":Ljava/net/SocketTimeoutException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/igaworks/util/image/HttpRequestHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v5

    .line 64
    .restart local v3    # "responseCode":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    :try_start_5
    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No file to download. Server replied HTTP code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid response code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e2":Ljava/io/IOException;
    :try_start_6
    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v5, :cond_2

    const-string v5, "IGAW_QA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttpRequestHelper IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method
