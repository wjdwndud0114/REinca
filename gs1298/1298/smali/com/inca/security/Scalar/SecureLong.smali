.class public Lcom/inca/security/Scalar/SecureLong;
.super Ljava/lang/Object;
.source "SecureLong.java" #SecureLong.java

# interfaces
.implements Lcom/inca/security/Interface/SecureLong;
.implements Lcom/inca/security/Interface/BaseVerifier;


# instance fields
.field private mValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    .line 7
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/inca/security/Scalar/SecureLong;->set(J)V

    .line 11
    return-void
.end method


# virtual methods
.method public abs()Lcom/inca/security/Interface/SecureLong;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public add(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 26
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    add-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public add(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 30
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public and(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 106
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    and-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public and(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 110
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    and-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public decrease()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 90
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public divide(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 50
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    div-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public divide(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 54
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equal(J)Z
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equal(Lcom/inca/security/Interface/SecureLong;)Z
    .locals 4
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public increase()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 94
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-int v0, v0

    return v0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    return-wide v0
.end method

.method public max(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 82
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public max(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 86
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public min(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 74
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public min(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 78
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public mod(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 58
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    rem-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public mod(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 62
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    rem-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public multiply(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 42
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public multiply(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 46
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public nagate()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public or(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 114
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    or-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public or(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 118
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    or-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public pow(J)Lcom/inca/security/Interface/SecureLong;
    .locals 7
    .param p1, "val"    # J

    .prologue
    .line 66
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-double v2, v2

    long-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public pow(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 70
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-double v2, v2

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public set(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    .line 15
    return-void
.end method

.method public set(Lcom/inca/security/Interface/SecureLong;)V
    .locals 2
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    .line 19
    return-void
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public subtract(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 34
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    sub-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public subtract(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 38
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public xor(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 122
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    xor-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method

.method public xor(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 126
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget-wide v2, p0, Lcom/inca/security/Scalar/SecureLong;->mValue:J

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->longValue()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method
