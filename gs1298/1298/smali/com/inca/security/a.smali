.class public Lcom/inca/security/a;
.super Ljava/lang/Object;
.source "c"


# instance fields
.field public synthetic IIIIiiIiII:[S

.field public synthetic IiIiIiiIii:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/inca/security/a;->IiIiIiiIii:I

    .line 162
    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    .line 94
    return-void
.end method

.method public static IiiiIIIIii([SIII)I
    .locals 5
    .param p0, "arg0"    # [S
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    move v0, p2

    .line 100
    .end local p2    # "arg2":I
    :goto_0
    if-eqz p2, :cond_0

    .line 164
    and-int/lit8 v3, p3, 0x1

    .line 104
    ushr-int/lit8 p3, p3, 0x1

    .line 188
    add-int v4, p1, v1

    aget-short v4, p0, v4

    invoke-static {v4, v3}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 86
    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, v0, -0x1

    or-int v0, v1, v3

    move v1, v0

    move v0, p2

    .line 100
    goto :goto_0

    .line 66
    :cond_0
    return v2
.end method

.method public static IiiiIIIIii([SILcom/inca/security/u;II)V
    .locals 4
    .param p0, "arg0"    # [S
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Lcom/inca/security/u;
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v1, 0x1

    .line 92
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 178
    and-int/lit8 v0, p4, 0x1

    .line 68
    add-int v3, p1, v2

    invoke-virtual {p2, p0, v3, v0}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 15
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v0

    .line 108
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 p4, p4, 0x1

    move v1, v0

    .line 92
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public IiiiIIIIii(I)I
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 112
    const/4 v1, 0x1

    .line 176
    iget v0, p0, Lcom/inca/security/a;->IiIiIiiIii:I

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 141
    add-int/lit8 v0, v1, -0x1

    ushr-int v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    .line 205
    iget-object v4, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    aget-short v4, v4, v2

    invoke-static {v4, v1}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 153
    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move v2, v1

    move v1, v0

    .line 160
    goto :goto_0

    .line 40
    :cond_0
    return v3
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    invoke-static {v0}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 124
    return-void
.end method

.method public IiiiIIIIii(Lcom/inca/security/u;I)V
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x1

    .line 120
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/inca/security/a;->IiIiIiiIii:I

    if-ge v0, v3, :cond_0

    .line 195
    and-int/lit8 v0, p2, 0x1

    .line 146
    iget-object v3, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    invoke-virtual {p1, v3, v2, v0}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 123
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v0

    .line 179
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 p2, p2, 0x1

    move v1, v0

    .line 120
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public iIiIIiIIIi(I)I
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 119
    const/4 v1, 0x1

    .line 174
    iget v0, p0, Lcom/inca/security/a;->IiIiIiiIii:I

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 130
    and-int/lit8 v4, p1, 0x1

    .line 32
    ushr-int/lit8 p1, p1, 0x1

    .line 190
    iget-object v0, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    aget-short v0, v0, v2

    invoke-static {v0, v4}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 26
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, -0x1

    or-int v1, v2, v4

    move v2, v1

    move v1, v0

    .line 174
    goto :goto_0

    .line 199
    :cond_0
    return v3
.end method

.method public iIiIIiIIIi(Lcom/inca/security/u;I)V
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x1

    .line 44
    iget v0, p0, Lcom/inca/security/a;->IiIiIiiIii:I

    move v2, v1

    move v1, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 181
    add-int/lit8 v0, v1, -0x1

    ushr-int v1, p2, v0

    and-int/lit8 v1, v1, 0x1

    .line 67
    iget-object v3, p0, Lcom/inca/security/a;->IIIIiiIiII:[S

    invoke-virtual {p1, v3, v2, v1}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 96
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    move v2, v1

    move v1, v0

    .line 161
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
