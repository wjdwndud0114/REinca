.class public final Lcom/tapjoy/internal/bh;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final read([B)I
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    const/4 v1, -0x1

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 55
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 56
    invoke-super {p0, p1, v0, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 57
    if-ne v2, v1, :cond_2

    .line 58
    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    add-int/2addr v0, v2

    .line 61
    goto :goto_0
.end method

.method public final read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v1, -0x1

    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-ge v0, p3, :cond_0

    .line 41
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-super {p0, p1, v2, v3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 42
    if-ne v2, v1, :cond_2

    .line 43
    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 43
    goto :goto_1

    .line 45
    :cond_2
    add-int/2addr v0, v2

    .line 46
    goto :goto_0
.end method

.method public final skip(J)J
    .locals 9
    .param p1, "count"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    move-wide v2, v4

    .line 68
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    .line 69
    sub-long v0, p1, v2

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 70
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 71
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v6

    .line 72
    if-ltz v6, :cond_1

    .line 75
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 78
    :cond_0
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-wide v2
.end method
