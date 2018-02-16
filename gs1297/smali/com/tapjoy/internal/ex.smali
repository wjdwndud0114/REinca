.class public final Lcom/tapjoy/internal/ex;
.super Lcom/tapjoy/internal/fj;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;


# instance fields
.field private final c:Lcom/tapjoy/internal/fj$a;

.field private final d:Lcom/tapjoy/internal/fj$a;

.field private final e:Lcom/tapjoy/internal/fj$a;

.field private final f:Lcom/tapjoy/internal/fj$a;

.field private final g:Lcom/tapjoy/internal/fj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ex;->a:Ljava/util/Map;

    .line 41
    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tapjoy/internal/fj;-><init>()V

    .line 51
    const-string v0, "BuildConfig"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/fj$a;

    .line 52
    const-string v0, "ServerFinal"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ex;->d:Lcom/tapjoy/internal/fj$a;

    .line 53
    const-string v0, "AppRuntime"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ex;->e:Lcom/tapjoy/internal/fj$a;

    .line 54
    iget-object v0, p0, Lcom/tapjoy/internal/ex;->e:Lcom/tapjoy/internal/fj$a;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    .line 55
    const-string v0, "ConnectFlags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ex;->f:Lcom/tapjoy/internal/fj$a;

    .line 56
    const-string v0, "ServerDefault"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ex;->g:Lcom/tapjoy/internal/fj$a;

    .line 57
    const-string v0, "SDKDefault"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fj$a;

    move-result-object v0

    .line 59
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/ex;->c:Lcom/tapjoy/internal/fj$a;

    const-string v2, ""

    .line 62
    invoke-static {v2}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1079
    const-string v2, "placement_request_content_retry_timeout"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v2, "placement_request_content_retry_backoff"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Number;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 1081
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1080
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iput-object v1, v0, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/Error;

    const-string v2, "BuildConfig.TJC_CONFIGURATION malformed"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/Hashtable;)V
    .locals 5

    .prologue
    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    sget-object v1, Lcom/tapjoy/internal/ex;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    if-nez v1, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/internal/ex;->e:Lcom/tapjoy/internal/fj$a;

    iget-object v4, v4, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ex;->f:Lcom/tapjoy/internal/fj$a;

    iput-object v2, v0, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/tapjoy/internal/ex;->setChanged()V

    .line 117
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "final"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 94
    const-string v1, "default"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/ex;->d:Lcom/tapjoy/internal/fj$a;

    iput-object v0, v2, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ex;->g:Lcom/tapjoy/internal/fj$a;

    iput-object v1, v0, Lcom/tapjoy/internal/fj$a;->b:Ljava/util/Map;

    .line 99
    invoke-virtual {p0}, Lcom/tapjoy/internal/ex;->setChanged()V

    .line 100
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
