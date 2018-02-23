.class public abstract Lcom/tapjoy/internal/hi;
.super Lcom/tapjoy/internal/ce;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tapjoy/internal/ce;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "POST"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "application/json"

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 5

    .prologue
    .line 32
    invoke-super {p0}, Lcom/tapjoy/internal/ce;->e()Ljava/util/Map;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v1

    .line 34
    const-string v2, "sdk_ver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    iget-object v4, v1, Lcom/tapjoy/internal/fz;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "api_key"

    .line 2191
    iget-object v1, v1, Lcom/tapjoy/internal/fz;->l:Ljava/lang/String;

    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3017
    sget-boolean v1, Lcom/tapjoy/internal/fw;->a:Z

    .line 36
    if-eqz v1, :cond_0

    .line 37
    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-object v0
.end method

.method protected f()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 45
    :try_start_0
    invoke-super {p0}, Lcom/tapjoy/internal/ce;->f()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 49
    throw v0
.end method
