.class Lcom/igaworks/adpopcorn/cores/c/a$d;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c/a;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/igaworks/adpopcorn/cores/c;

.field private i:I

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Lorg/json/JSONObject;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PostHttpRequestThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    iput-boolean p5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->l:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    return-void
.end method

.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PostHttpRequestThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->l:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->m:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PostHttpRequestThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->l:Z

    iput-object p4, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->m:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;IZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PostHttpRequestThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    iput p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    const-string v0, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/offerwall"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0, p4, p5, p6}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    iput p5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->i:I

    iput v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a$d;)I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    return v0
.end method

.method private a()V
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v0, v1, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "User-Agent"

    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->l:Z

    if-eqz v1, :cond_8

    const-string v1, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "PostHttpRequestThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "useJsonBody parameter = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "useJsonBody requestType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", httpResponseString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_4
    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/c;-><init>()V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->a(Z)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Z)V

    :cond_3
    iget v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    invoke-static {v1, v2, v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V

    return-void

    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v3}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "PostHttpRequestThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "useJsonBody parameter = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->m:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->m:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->m:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "PostHttpRequestThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "q = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", httpResponseString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->c:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_9
    :goto_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    :cond_a
    :try_start_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_a
    if-eqz v1, :cond_b

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_b
    :goto_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a$d;I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->k:I

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a$d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    return-object v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/cores/c/a$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a()V

    return-void
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/cores/c/a$d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/cores/c/a$d;)Lcom/igaworks/adpopcorn/cores/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_5

    :cond_0
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->f:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/c;->a(Z)V

    :cond_1
    iget v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->i:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    const-string v2, "AdPOPcornParameter already initialized"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    const-string v2, "AdPOPcornParameter creating..."

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/igaworks/adpopcorn/cores/c/a$d$1;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/cores/c/a$d$1;-><init>(Lcom/igaworks/adpopcorn/cores/c/a$d;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/igaworks/adpopcorn/cores/c/a$d$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/cores/c/a$d$2;-><init>(Lcom/igaworks/adpopcorn/cores/c/a$d;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PostHttpRequestThread"

    const-string v2, "page index > 1 && already initialized"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$d;->h:Lcom/igaworks/adpopcorn/cores/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/c;->a(Z)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
