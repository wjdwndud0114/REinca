.class public Lcom/inca/security/o;
.super Ljava/lang/Object;
.source "o"


# static fields
.field public static synthetic IIIIiiIiII:[I


# instance fields
.field public synthetic IiIiIiiIii:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v1, 0x0

    .line 31
    new-array v0, v6, [I

    sput-object v0, Lcom/inca/security/o;->IIIIiiIiII:[I

    move v0, v1

    move v2, v1

    .line 132
    :goto_0
    if-ge v0, v6, :cond_2

    move v0, v1

    move v3, v1

    move v4, v2

    .line 72
    :goto_1
    const/16 v5, 0x8

    if-ge v0, v5, :cond_1

    .line 30
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 87
    ushr-int/lit8 v0, v4, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    .line 72
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v0, v3

    goto :goto_1

    .line 124
    :cond_0
    ushr-int/lit8 v0, v4, 0x1

    goto :goto_2

    .line 182
    :cond_1
    sget-object v3, Lcom/inca/security/o;->IIIIiiIiII:[I

    add-int/lit8 v0, v2, 0x1

    aput v4, v3, v2

    move v2, v0

    .line 132
    goto :goto_0

    .line 19
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    return-void
.end method


# virtual methods
.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    .line 96
    return-void
.end method

.method public IiiiIIIIii(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 16
    sget-object v0, Lcom/inca/security/o;->IIIIiiIiII:[I

    iget v1, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    xor-int/2addr v1, p1

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    iget v1, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    ushr-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    .line 61
    return-void
.end method

.method public IiiiIIIIii([B)V
    .locals 5
    .param p1, "arg0"    # [B

    .prologue
    .line 146
    array-length v2, p1

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 179
    sget-object v0, Lcom/inca/security/o;->IIIIiiIiII:[I

    iget v3, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v3, v0, v3

    iget v4, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v1, v4, 0x8

    xor-int/2addr v1, v3

    iput v1, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    move v1, v0

    .line 123
    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public IiiiIIIIii([BII)V
    .locals 4
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 97
    sget-object v0, Lcom/inca/security/o;->IIIIiiIiII:[I

    iget v2, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v0, v2

    iget v3, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v1, v3, 0x8

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/inca/security/o;->IiIiIiiIii:I

    move v1, v0

    .line 22
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
