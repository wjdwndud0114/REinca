.class final Lcom/tapjoy/internal/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/tapjoy/internal/hy;

.field g:Lcom/tapjoy/internal/hy;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/hy;->a:[B

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hy;->e:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hy;->d:Z

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/hy;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p1, Lcom/tapjoy/internal/hy;->a:[B

    iget v1, p1, Lcom/tapjoy/internal/hy;->b:I

    iget v2, p1, Lcom/tapjoy/internal/hy;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/hy;-><init>([BII)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tapjoy/internal/hy;->d:Z

    .line 69
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/tapjoy/internal/hy;->a:[B

    .line 73
    iput p2, p0, Lcom/tapjoy/internal/hy;->b:I

    .line 74
    iput p3, p0, Lcom/tapjoy/internal/hy;->c:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hy;->e:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hy;->d:Z

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/hy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    iget-object v3, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    iput-object v3, v2, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    .line 86
    iget-object v2, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    iget-object v3, p0, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    iput-object v3, v2, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    .line 87
    iput-object v1, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    .line 88
    iput-object v1, p0, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    .line 89
    return-object v0

    :cond_0
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/internal/hy;)Lcom/tapjoy/internal/hy;
    .locals 1

    .prologue
    .line 97
    iput-object p0, p1, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    iput-object v0, p1, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    iput-object p1, v0, Lcom/tapjoy/internal/hy;->g:Lcom/tapjoy/internal/hy;

    .line 100
    iput-object p1, p0, Lcom/tapjoy/internal/hy;->f:Lcom/tapjoy/internal/hy;

    .line 101
    return-object p1
.end method

.method public final a(Lcom/tapjoy/internal/hy;I)V
    .locals 6

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 151
    iget-boolean v0, p1, Lcom/tapjoy/internal/hy;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget v0, p1, Lcom/tapjoy/internal/hy;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 154
    iget-boolean v0, p1, Lcom/tapjoy/internal/hy;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_1
    iget v0, p1, Lcom/tapjoy/internal/hy;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/tapjoy/internal/hy;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 156
    :cond_2
    iget-object v0, p1, Lcom/tapjoy/internal/hy;->a:[B

    iget v1, p1, Lcom/tapjoy/internal/hy;->b:I

    iget-object v2, p1, Lcom/tapjoy/internal/hy;->a:[B

    iget v3, p1, Lcom/tapjoy/internal/hy;->c:I

    iget v4, p1, Lcom/tapjoy/internal/hy;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lcom/tapjoy/internal/hy;->c:I

    iget v1, p1, Lcom/tapjoy/internal/hy;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/tapjoy/internal/hy;->c:I

    .line 158
    iput v5, p1, Lcom/tapjoy/internal/hy;->b:I

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/hy;->a:[B

    iget v1, p0, Lcom/tapjoy/internal/hy;->b:I

    iget-object v2, p1, Lcom/tapjoy/internal/hy;->a:[B

    iget v3, p1, Lcom/tapjoy/internal/hy;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lcom/tapjoy/internal/hy;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/tapjoy/internal/hy;->c:I

    .line 163
    iget v0, p0, Lcom/tapjoy/internal/hy;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tapjoy/internal/hy;->b:I

    .line 164
    return-void
.end method
