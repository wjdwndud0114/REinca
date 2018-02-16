.class Lcom/tnkfactory/ad/gp;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tnkfactory/ad/hz;

.field protected b:Lcom/tnkfactory/ad/fc;

.field protected c:Ljava/util/Map;

.field protected d:Z


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hz;Lcom/tnkfactory/ad/fc;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iput-object v0, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    iput-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/gp;->d:Z

    iput-object p1, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iput-object p2, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    iput-boolean p3, p0, Lcom/tnkfactory/ad/gp;->d:Z

    invoke-direct {p0, p3}, Lcom/tnkfactory/ad/gp;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    const-string v1, "*"

    sget-object v2, Lcom/tnkfactory/ad/fd;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/tnkfactory/ad/gp;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    sget-object v1, Lcom/tnkfactory/ad/fd;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fd;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/tnkfactory/ad/gp;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->c:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tnkfactory/ad/fd;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fd;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fd;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/tnkfactory/ad/gp;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/net/URL;

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/gp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :try_start_0
    sget v1, Lcom/tnkfactory/ad/fd;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/tnkfactory/ad/fd;->j:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Lcom/tnkfactory/framework/a/d;

    sget-object v1, Lcom/tnkfactory/ad/if;->a:[B

    invoke-direct {v2, v1}, Lcom/tnkfactory/framework/a/d;-><init>([B)V

    new-instance v1, Lcom/tnkfactory/framework/a/c;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v2}, Lcom/tnkfactory/framework/a/a;->a()Lcom/tnkfactory/framework/a/a;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/tnkfactory/framework/a/c;-><init>(Ljava/io/OutputStream;Lcom/tnkfactory/framework/a/a;)V

    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/tnkfactory/ad/go;

    invoke-direct {v4}, Lcom/tnkfactory/ad/go;-><init>()V

    const-string v1, "p"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "t"

    invoke-virtual {v4, v1, p1}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "m"

    invoke-virtual {v4, v1, p2}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, v1, Lcom/tnkfactory/ad/hz;->a:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string v5, "override_app_id"

    invoke-interface {p4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "override_app_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v5, "a"

    invoke-virtual {v4, v5, v1}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "i"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->k:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "u"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->j:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "f"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->l:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "v"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, v1, Lcom/tnkfactory/ad/hz;->q:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "n"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->q:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, v1, Lcom/tnkfactory/ad/hz;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "z"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->m:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v1, "r"

    iget-object v5, p0, Lcom/tnkfactory/ad/gp;->a:Lcom/tnkfactory/ad/hz;

    iget-object v5, v5, Lcom/tnkfactory/ad/hz;->E:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "k"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "6.36"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tnkfactory/ad/fd;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v5, p3

    if-ge v1, v5, :cond_3

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tnkfactory/ad/gn;

    invoke-direct {v1, v3}, Lcom/tnkfactory/ad/gn;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v1}, Lcom/tnkfactory/ad/go;->writeExternal(Ljava/io/ObjectOutput;)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    new-instance v1, Lcom/tnkfactory/framework/a/b;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v2}, Lcom/tnkfactory/framework/a/a;->a()Lcom/tnkfactory/framework/a/a;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/tnkfactory/framework/a/b;-><init>(Ljava/io/InputStream;Lcom/tnkfactory/framework/a/a;)V

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lcom/tnkfactory/ad/go;

    invoke-direct {v1}, Lcom/tnkfactory/ad/go;-><init>()V

    new-instance v3, Lcom/tnkfactory/ad/gm;

    invoke-direct {v3, v2}, Lcom/tnkfactory/ad/gm;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3}, Lcom/tnkfactory/ad/go;->readExternal(Ljava/io/ObjectInput;)V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "p"

    invoke-virtual {v1, v2}, Lcom/tnkfactory/ad/go;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/tnkfactory/ad/go;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tnkfactory/ad/gl;

    invoke-direct {v2, v1}, Lcom/tnkfactory/ad/gl;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/tnkfactory/ad/go;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tnkfactory/ad/gp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fc;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/gp;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tnkfactory/ad/gl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v1, p1, p2}, Lcom/tnkfactory/ad/fc;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tnkfactory/ad/gp;->b:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v1, p1, p2}, Lcom/tnkfactory/ad/fc;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf761799e254d922b37a765131eb75"

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/tnkfactory/ad/gl;

    const-string v2, "f47d1083ec42852bf57e6d4f3bfd7b"

    invoke-static {v2}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tnkfactory/ad/gl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
