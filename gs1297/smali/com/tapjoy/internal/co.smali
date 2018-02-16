.class public final Lcom/tapjoy/internal/co;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/co;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 46
    move v0, p2

    move v2, v1

    .line 47
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_0

    .line 48
    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, p1, v0

    add-int/2addr v2, v3

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    ushr-int/lit8 v0, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    .line 53
    ushr-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 54
    iget-object v2, p0, Lcom/tapjoy/internal/co;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int v3, v0, v2

    .line 56
    iget-object v0, p0, Lcom/tapjoy/internal/co;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 57
    if-eqz v0, :cond_4

    .line 1030
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 57
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 63
    :goto_2
    return-object v0

    :cond_2
    move v2, v1

    .line 1033
    :goto_3
    if-ge v2, p3, :cond_3

    .line 1034
    add-int v4, p2, v2

    aget-char v4, p1, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1038
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 62
    iget-object v1, p0, Lcom/tapjoy/internal/co;->a:[Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_2
.end method
