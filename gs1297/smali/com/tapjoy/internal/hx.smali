.class final Lcom/tapjoy/internal/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ht;


# instance fields
.field public final a:Lcom/tapjoy/internal/hr;

.field public final b:Lcom/tapjoy/internal/ic;

.field c:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ic;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/tapjoy/internal/hr;

    invoke-direct {v0}, Lcom/tapjoy/internal/hr;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 59
    .line 1063
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/hx;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    iget-object v1, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ic;->b(Lcom/tapjoy/internal/hr;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 59
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1068
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method public final b(Lcom/tapjoy/internal/hr;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 40
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iget-boolean v2, p0, Lcom/tapjoy/internal/hx;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    iget-wide v2, v2, Lcom/tapjoy/internal/hr;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    iget-object v3, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/tapjoy/internal/ic;->b(Lcom/tapjoy/internal/hr;J)J

    move-result-wide v2

    .line 46
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 50
    :goto_0
    return-wide v0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 50
    iget-object v2, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v2, p1, v0, v1}, Lcom/tapjoy/internal/hr;->b(Lcom/tapjoy/internal/hr;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(J)Lcom/tapjoy/internal/hu;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/hx;->a(J)V

    .line 83
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/hr;->b(J)Lcom/tapjoy/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tapjoy/internal/hx;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    iget-object v1, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ic;->b(Lcom/tapjoy/internal/hr;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()B
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/hx;->a(J)V

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hr;->c()B

    move-result v0

    return v0
.end method

.method public final c(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/hx;->a(J)V

    .line 183
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/hr;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/tapjoy/internal/hx;->c:Z

    if-eqz v0, :cond_0

    .line 2802
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hx;->c:Z

    .line 411
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    invoke-interface {v0}, Lcom/tapjoy/internal/ic;->close()V

    .line 412
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    .line 2799
    :try_start_0
    iget-wide v2, v0, Lcom/tapjoy/internal/hr;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/hr;->d(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2800
    :catch_0
    move-exception v0

    .line 2801
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/tapjoy/internal/hx;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    .line 2060
    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    .line 307
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/hr;->d(J)V

    .line 309
    sub-long/2addr p1, v0

    .line 303
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    iget-object v1, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ic;->b(Lcom/tapjoy/internal/hr;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 311
    :cond_2
    return-void
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/hx;->a(J)V

    .line 252
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    .line 1403
    invoke-virtual {v0}, Lcom/tapjoy/internal/hr;->d()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/ie;->a(I)I

    move-result v0

    .line 252
    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 261
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/hx;->a(J)V

    .line 262
    iget-object v0, p0, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hr;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/hx;->b:Lcom/tapjoy/internal/ic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
