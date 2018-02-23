.class public final Lcom/tapjoy/internal/ff$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/util/TreeMap;

.field private final c:Ljava/util/Map;

.field private volatile d:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/util/Map;

    .line 254
    iput-object p1, p0, Lcom/tapjoy/internal/ff$a;->a:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ff$a;
    .locals 2

    .prologue
    .line 262
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/ff$a;->d:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object p0

    .line 265
    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/ff$a;->d:J

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    const-string v1, "failure"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/tapjoy/internal/ff$a;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object p0
.end method

.method public final b()Lcom/tapjoy/internal/ff$a;
    .locals 6

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/tapjoy/internal/ff$a;->d:J

    .line 276
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 278
    :try_start_0
    const-string v2, "spent_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;J)Lcom/tapjoy/internal/ff$a;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    const-string v1, "misuse"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object p0
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Lcom/tapjoy/internal/ff$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ff$a;->b:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/util/Map;

    .line 331
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/ff$a;->c:Ljava/util/Map;

    .line 330
    :cond_0
    invoke-static {v2, v0, v1}, Lcom/tapjoy/internal/ff;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    return-void

    :cond_1
    move-object v0, v1

    .line 330
    goto :goto_0
.end method
