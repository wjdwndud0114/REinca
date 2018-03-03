.class public final Lcom/tapjoy/internal/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/hs;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/hs;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    .line 191
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 112
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 115
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method static a(ILcom/tapjoy/internal/dk;)I
    .locals 2

    .prologue
    .line 63
    shl-int/lit8 v0, p0, 0x3

    iget v1, p1, Lcom/tapjoy/internal/dk;->e:I

    or-int/2addr v0, v1

    return v0
.end method

.method static a(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 121
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 122
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 123
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 124
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 125
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 126
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 127
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 128
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 129
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 130
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static b(I)I
    .locals 2

    .prologue
    .line 144
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method static b(J)J
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/hu;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/hs;->b(Lcom/tapjoy/internal/hu;)Lcom/tapjoy/internal/hs;

    .line 195
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 221
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/hs;->e(I)Lcom/tapjoy/internal/hs;

    .line 223
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/hs;->e(I)Lcom/tapjoy/internal/hs;

    .line 226
    return-void
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 230
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/hs;->e(I)Lcom/tapjoy/internal/hs;

    .line 232
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/hs;->e(I)Lcom/tapjoy/internal/hs;

    .line 235
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/hs;->d(I)Lcom/tapjoy/internal/hs;

    .line 240
    return-void
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/tapjoy/internal/hs;->f(J)Lcom/tapjoy/internal/hs;

    .line 245
    return-void
.end method
