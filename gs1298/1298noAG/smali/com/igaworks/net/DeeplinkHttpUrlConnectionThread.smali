.class public Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;
.super Ljava/lang/Thread;
.source "DeeplinkHttpUrlConnectionThread.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GET:I = 0x0

.field public static final POST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JSONHttpUrlConnectionThread"


# instance fields
.field private callbackOnMainThread:Z

.field private conn:Ljava/net/HttpURLConnection;

.field private context:Landroid/content/Context;

.field private httpResponseString:Ljava/lang/String;

.field private isEncode:Z

.field private listener:Lcom/igaworks/interfaces/HttpCallbackListener;

.field private method:I

.field private queryString:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .param p3, "url_"    # Ljava/lang/String;
    .param p4, "queryString"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/igaworks/interfaces/HttpCallbackListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/interfaces/HttpCallbackListener;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # I
    .param p3, "url_"    # Ljava/lang/String;
    .param p4, "queryString"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/igaworks/interfaces/HttpCallbackListener;
    .param p6, "isEncode"    # Z
    .param p7, "callbackOnMainThread_"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->callbackOnMainThread:Z

    .line 46
    iput-object p3, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->method:I

    .line 48
    iput-object p4, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->queryString:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    .line 50
    iput-object p1, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    .line 51
    iput-boolean p6, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->isEncode:Z

    .line 52
    iput-boolean p7, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->callbackOnMainThread:Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    return-object v0
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 196
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0xc8

    .line 57
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .local v2, "handler":Landroid/os/Handler;
    const-string v5, ""

    .line 60
    .local v5, "response":Ljava/lang/String;
    const/4 v6, -0x1

    .line 62
    .local v6, "responseCode":I
    iget v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->method:I

    if-nez v9, :cond_7

    .line 64
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    .line 70
    :goto_0
    iget-boolean v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->isEncode:Z

    if-eqz v9, :cond_2

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "queryString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->queryString:Ljava/lang/String;

    invoke-static {v10}, Lcom/igaworks/util/IgawBase64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    .line 76
    :goto_1
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, "urlObj":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    .line 78
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "Accept-Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 83
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 84
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 85
    invoke-direct {p0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->disableConnectionReuseIfNecessary()V

    .line 87
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONHttpUrlConnectionThread>> url = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 89
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 91
    if-ne v6, v14, :cond_4

    .line 93
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 67
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "urlObj":Ljava/net/URL;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 173
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "responseCode":I
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    new-instance v2, Landroid/os/Handler;

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    .restart local v2    # "handler":Landroid/os/Handler;
    iget-boolean v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v9, :cond_c

    .line 177
    new-instance v9, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$3;

    invoke-direct {v9, p0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$3;-><init>(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :goto_3
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    return-void

    .line 73
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->queryString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 188
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "responseCode":I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v9

    .line 99
    .restart local v2    # "handler":Landroid/os/Handler;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    .restart local v7    # "urlObj":Ljava/net/URL;
    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONHttpUrlConnectionThread: HTTP GET >> responseCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 100
    const-string v5, ""

    .line 142
    :cond_5
    :goto_5
    iput-object v5, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    .line 144
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 145
    iget-boolean v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v9, :cond_9

    .line 146
    new-instance v9, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;

    invoke-direct {v9, p0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;-><init>(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :cond_6
    :goto_6
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 105
    .end local v7    # "urlObj":Ljava/net/URL;
    :cond_7
    :try_start_4
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v7    # "urlObj":Ljava/net/URL;
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONHttpUrlConnectionThread: HTTP POST > reqName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", param : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->queryString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 108
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    .line 109
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3a98

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "POST"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 113
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 114
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "Accept-Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "Content-Type"

    const-string v11, "application/json; charset=utf-8"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 117
    invoke-direct {p0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->disableConnectionReuseIfNecessary()V

    .line 119
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 120
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    .local v8, "writer":Ljava/io/BufferedWriter;
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->queryString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 124
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 125
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 127
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 129
    if-ne v6, v14, :cond_8

    .line 131
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "line":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 137
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSONHttpUrlConnectionThread: HTTP POST >> responseCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 138
    const-string v5, ""

    goto/16 :goto_5

    .line 156
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_9
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    iget-object v10, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 157
    sget-boolean v9, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;

    const-string v10, "Live"

    iget-object v11, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-static {v9, v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 160
    :cond_a
    iget-boolean v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->callbackOnMainThread:Z

    if-eqz v9, :cond_b

    .line 161
    new-instance v9, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$2;

    invoke-direct {v9, p0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$2;-><init>(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 168
    :cond_b
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 185
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "responseCode":I
    .end local v7    # "urlObj":Ljava/net/URL;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    iget-object v9, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method
