.class Lcom/igaworks/adpopcorn/cores/c/a$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c/a;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "GetHttpRequestThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->g:Ljava/lang/String;

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->f:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/adpopcorn/cores/c/a$b;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "GetHttpRequestThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v2, v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", httpResponseString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/c;-><init>()V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->a(Z)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->f:I

    invoke-static {v1, v2, v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$b;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    :goto_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method
