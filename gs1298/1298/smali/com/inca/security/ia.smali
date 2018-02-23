.class public Lcom/inca/security/ia;
.super Ljava/lang/Object;
.source "pa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IiiiIIIIii([BI)I
    .locals 9
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v0, -0x1

    .line 31
    const v6, -0x12477ce0

    .line 99
    array-length v7, p1

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_2

    aget-byte v0, p1, v2

    .line 138
    xor-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    move v4, v1

    move v5, v0

    move v0, v1

    .line 94
    :goto_1
    const/16 v8, 0x8

    if-ge v0, v8, :cond_1

    .line 72
    and-int/lit8 v0, v5, 0x1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    ushr-int/lit8 v0, v5, 0x1

    xor-int/2addr v0, v6

    .line 94
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    move v0, v4

    goto :goto_1

    .line 30
    :cond_0
    ushr-int/lit8 v0, v5, 0x1

    goto :goto_2

    .line 165
    :cond_1
    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v0, v2, 0x1

    xor-int v2, v3, v5

    move v3, v2

    move v2, v0

    .line 99
    goto :goto_0

    .line 19
    :cond_2
    xor-int/lit8 v0, v3, -0x1

    .line 44
    return v0
.end method
