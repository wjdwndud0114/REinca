.class public abstract Lcom/tapjoy/internal/ce;
.super Lcom/tapjoy/internal/cf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tapjoy/internal/cf;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
.end method

.method public final a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p2}, Lcom/tapjoy/internal/bs;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/bs;

    move-result-object v3

    .line 1011
    const-string v1, "BASE_URI"

    invoke-interface {v3, v1, p1}, Lcom/tapjoy/internal/bp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->h()V

    move v2, v1

    move-object v1, v0

    .line 34
    :goto_0
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v4

    .line 36
    const-string v5, "status"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->r()I

    move-result v2

    goto :goto_0

    .line 38
    :cond_0
    const-string v5, "message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_1
    const-string v5, "data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/ce;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->close()V

    throw v0

    .line 46
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->i()V

    .line 47
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_4

    .line 48
    new-instance v0, Lcom/tapjoy/internal/cg;

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/cg;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_4
    invoke-virtual {v3}, Lcom/tapjoy/internal/bs;->close()V

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method
