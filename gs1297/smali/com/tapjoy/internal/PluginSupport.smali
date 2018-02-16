.class public final Lcom/tapjoy/internal/PluginSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tapjoy/internal/eu;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static trackUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dimensions"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .annotation build Lcom/tapjoy/internal/eu;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/internal/aq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/bs;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->close()V

    .line 33
    :goto_0
    invoke-static {p2}, Lcom/tapjoy/internal/aq;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {p2}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 37
    :try_start_3
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->h()V

    .line 38
    :goto_1
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->q()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->close()V

    throw v0

    .line 52
    :catch_0
    move-exception v0

    :goto_2
    return-void

    .line 28
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    :try_start_6
    invoke-virtual {v2}, Lcom/tapjoy/internal/bs;->close()V

    .line 47
    :cond_1
    invoke-static {p0, v1, v0}, Lcom/tapjoy/internal/ff;->a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
