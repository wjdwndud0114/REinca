.class final enum Lcom/moat/analytics/mobile/tjy/ab;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/aa;


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/tjy/ab;

.field private static final synthetic b:[Lcom/moat/analytics/mobile/tjy/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ab;

    const-string v1, "instance"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/tjy/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/ab;->a:Lcom/moat/analytics/mobile/tjy/ab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/moat/analytics/mobile/tjy/ab;

    sget-object v1, Lcom/moat/analytics/mobile/tjy/ab;->a:Lcom/moat/analytics/mobile/tjy/ab;

    aput-object v1, v0, v2

    sput-object v0, Lcom/moat/analytics/mobile/tjy/ab;->b:[Lcom/moat/analytics/mobile/tjy/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x100

    const/4 v1, 0x0

    new-array v2, v6, [C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v4, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-virtual {v4, v2, v1, v6}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_1

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    if-lt v0, v5, :cond_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/ab;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/tjy/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ab;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/tjy/ab;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/tjy/ab;->b:[Lcom/moat/analytics/mobile/tjy/ab;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/tjy/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/tjy/ab;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/tjy/ab;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method
