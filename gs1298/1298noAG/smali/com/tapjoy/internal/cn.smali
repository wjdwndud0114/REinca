.class public final Lcom/tapjoy/internal/cn;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    if-ne p0, p1, :cond_1

    .line 32
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 18
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    .end local p1    # "o":Ljava/lang/Object;
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/tapjoy/internal/cn;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 22
    :cond_2
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/internal/cn;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 24
    :cond_3
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/tapjoy/internal/cn;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 26
    :cond_4
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/tapjoy/internal/cn;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public final floatValue()F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 53
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tapjoy/internal/cn;->a:Ljava/lang/String;

    return-object v0
.end method
