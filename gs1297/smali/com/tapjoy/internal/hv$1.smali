.class final Lcom/tapjoy/internal/hv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ib;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/id;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/id;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tapjoy/internal/hv$1;->a:Lcom/tapjoy/internal/id;

    iput-object p2, p0, Lcom/tapjoy/internal/hv$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/hr;J)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    iget-wide v0, p1, Lcom/tapjoy/internal/hr;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/ie;->a(JJJ)V

    .line 76
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/hv$1;->a:Lcom/tapjoy/internal/id;

    invoke-virtual {v0}, Lcom/tapjoy/internal/id;->a()V

    .line 78
    iget-object v0, p1, Lcom/tapjoy/internal/hr;->a:Lcom/tapjoy/internal/hy;

    .line 79
    iget v1, v0, Lcom/tapjoy/internal/hy;->c:I

    iget v4, v0, Lcom/tapjoy/internal/hy;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 80
    iget-object v4, p0, Lcom/tapjoy/internal/hv$1;->b:Ljava/io/OutputStream;

    iget-object v5, v0, Lcom/tapjoy/internal/hy;->a:[B

    iget v6, v0, Lcom/tapjoy/internal/hy;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v4, v0, Lcom/tapjoy/internal/hy;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/tapjoy/internal/hy;->b:I

    .line 83
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 84
    iget-wide v4, p1, Lcom/tapjoy/internal/hr;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/tapjoy/internal/hr;->b:J

    .line 86
    iget v1, v0, Lcom/tapjoy/internal/hy;->b:I

    iget v4, v0, Lcom/tapjoy/internal/hy;->c:I

    if-ne v1, v4, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/tapjoy/internal/hy;->a()Lcom/tapjoy/internal/hy;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/hr;->a:Lcom/tapjoy/internal/hy;

    .line 88
    invoke-static {v0}, Lcom/tapjoy/internal/hz;->a(Lcom/tapjoy/internal/hy;)V

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/hv$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/hv$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/hv$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
