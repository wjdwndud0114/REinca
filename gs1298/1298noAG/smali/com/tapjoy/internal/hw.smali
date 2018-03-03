.class final Lcom/tapjoy/internal/hw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/hs;


# instance fields
.field public final a:Lcom/tapjoy/internal/hr;

.field public final b:Lcom/tapjoy/internal/ib;

.field c:Z


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ib;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/tapjoy/internal/hr;

    invoke-direct {v0}, Lcom/tapjoy/internal/hr;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    .line 31
    return-void
.end method

.method private b()Lcom/tapjoy/internal/hs;
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    .line 1260
    iget-wide v0, v4, Lcom/tapjoy/internal/hr;->b:J

    .line 1261
    cmp-long v5, v0, v2

    if-nez v5, :cond_3

    move-wide v0, v2

    .line 171
    :cond_1
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    iget-object v3, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-interface {v2, v3, v0, v1}, Lcom/tapjoy/internal/ib;->a(Lcom/tapjoy/internal/hr;J)V

    .line 172
    :cond_2
    return-object p0

    .line 1264
    :cond_3
    iget-object v4, v4, Lcom/tapjoy/internal/hr;->a:Lcom/tapjoy/internal/hy;

    iget-object v4, v4, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    .line 1265
    iget v5, v4, Lcom/tapjoy/internal/hy;->c:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lcom/tapjoy/internal/hy;->e:Z

    if-eqz v5, :cond_1

    .line 1266
    iget v5, v4, Lcom/tapjoy/internal/hy;->c:I

    iget v4, v4, Lcom/tapjoy/internal/hy;->b:I

    sub-int v4, v5, v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/hs;
    .locals 4

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    .line 2060
    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    .line 178
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    iget-object v3, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-interface {v2, v3, v0, v1}, Lcom/tapjoy/internal/ib;->a(Lcom/tapjoy/internal/hr;J)V

    .line 179
    :cond_1
    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/hr;J)V
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/hr;J)V

    .line 41
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    .line 42
    return-void
.end method

.method public final b(Lcom/tapjoy/internal/hu;)Lcom/tapjoy/internal/hs;
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/hu;)Lcom/tapjoy/internal/hr;

    .line 47
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/hs;
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hr;->a(Ljava/lang/String;)Lcom/tapjoy/internal/hr;

    .line 53
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 6

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-wide v2, v1, Lcom/tapjoy/internal/hr;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    iget-object v2, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-object v3, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-wide v4, v3, Lcom/tapjoy/internal/hr;->b:J

    invoke-interface {v1, v2, v4, v5}, Lcom/tapjoy/internal/ib;->a(Lcom/tapjoy/internal/hr;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    invoke-interface {v1}, Lcom/tapjoy/internal/ib;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/hw;->c:Z

    .line 242
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tapjoy/internal/ie;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 232
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final d(I)Lcom/tapjoy/internal/hs;
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hr;->b(I)Lcom/tapjoy/internal/hr;

    .line 141
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lcom/tapjoy/internal/hs;
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hr;->a(I)Lcom/tapjoy/internal/hr;

    .line 117
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)Lcom/tapjoy/internal/hs;
    .locals 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/hr;->e(J)Lcom/tapjoy/internal/hr;

    .line 153
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->b()Lcom/tapjoy/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 4

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/tapjoy/internal/hw;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-wide v0, v0, Lcom/tapjoy/internal/hr;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    iget-object v1, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-object v2, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hr;

    iget-wide v2, v2, Lcom/tapjoy/internal/hr;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ib;->a(Lcom/tapjoy/internal/hr;J)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    invoke-interface {v0}, Lcom/tapjoy/internal/ib;->flush()V

    .line 219
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/ib;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
