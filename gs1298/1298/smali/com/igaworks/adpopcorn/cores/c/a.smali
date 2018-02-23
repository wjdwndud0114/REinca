.class public Lcom/igaworks/adpopcorn/cores/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/cores/c/a$a;,
        Lcom/igaworks/adpopcorn/cores/c/a$b;,
        Lcom/igaworks/adpopcorn/cores/c/a$c;,
        Lcom/igaworks/adpopcorn/cores/c/a$d;
    }
.end annotation


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private a:Ljava/util/LinkedHashMap;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/c/a;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a;Ljava/net/URLConnection;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move v5, v6

    move-object v2, p1

    :goto_0
    :try_start_0
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iget-object v8, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "openConnectionCheckRedirects, status: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v8, 0x12c

    if-lt v7, v8, :cond_6

    const/16 v8, 0x133

    if-gt v7, v8, :cond_6

    const/16 v8, 0x132

    if-eq v7, v8, :cond_6

    const/16 v8, 0x130

    if-eq v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const-string v9, "IGAW_QA"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "openConnectionCheckRedirects, loc: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v2, v9, v10, v11}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v8, :cond_5

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v7, "http"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v7, "https"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    if-lt v5, v1, :cond_3

    :cond_2
    move-object v1, v4

    :goto_2
    return-object v1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    move v12, v5

    move v5, v1

    move v1, v12

    :goto_3
    if-nez v5, :cond_4

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    move v5, v1

    goto/16 :goto_0

    :cond_5
    move-object v2, v4

    goto :goto_1

    :cond_6
    move v1, v5

    move v5, v6

    goto :goto_3
.end method

.method private a(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v3, v4

    move v5, v6

    move-object v2, p1

    :goto_0
    :try_start_0
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    iget-object v9, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "openConnectionCheckRedirectsJsonBody, status: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v9, v10, v11, v12}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_6

    const/16 v9, 0x133

    if-gt v8, v9, :cond_6

    const/16 v9, 0x132

    if-eq v8, v9, :cond_6

    const/16 v9, 0x130

    if-eq v8, v9, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const-string v10, "IGAW_QA"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "openConnectionCheckRedirectsJsonBody, loc: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v2, v10, v11, v12}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v9, :cond_5

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v8, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v8, "http"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v8, "https"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    if-lt v5, v1, :cond_3

    :cond_2
    move-object v1, v4

    :goto_2
    return-object v1

    :cond_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const-string v8, "POST"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v1, 0xbb8

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v1, "User-Agent"

    const-string v8, "http.agent"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v2, v1, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    move v1, v5

    move v5, v7

    :goto_3
    if-nez v5, :cond_4

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    move v5, v1

    goto/16 :goto_0

    :cond_5
    move-object v2, v4

    goto :goto_1

    :cond_6
    move v1, v5

    move v5, v6

    goto :goto_3
.end method

.method private a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private a(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/c/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/c/a;->c:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/c/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/igaworks/adpopcorn/cores/c/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/c/a$1;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/model/c;)V

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/cores/c/a;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a;->a:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 4

    invoke-direct {p0, p1, p4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/igaworks/adpopcorn/cores/c/a$a;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$a;->start()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/igaworks/adpopcorn/cores/c/a$a;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$a;->start()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$b;

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/c/a$b;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$b;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$b;->start()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/igaworks/adpopcorn/cores/c/a$d;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 6

    invoke-direct {p0, p1, p5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a$d;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 8

    const/4 v2, 0x6

    invoke-direct {p0, v2, p5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$d;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/igaworks/adpopcorn/cores/c/a$d;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;IZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->start()V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    .locals 6

    invoke-direct {p0, p1, p4}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILcom/igaworks/adpopcorn/cores/c/a$c;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a$d;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a$d;-><init>(Lcom/igaworks/adpopcorn/cores/c/a;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c/a$d;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
