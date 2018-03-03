.class public Lcom/inca/security/p;
.super Ljava/lang/Object;
.source "h"


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IiIiIiiIii:[S


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/inca/security/p;->IIIIiiIiII:I

    .line 132
    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/p;->IiIiIiiIii:[S

    .line 162
    return-void
.end method

.method public static IiiiIIIIii([SILcom/inca/security/q;I)I
    .locals 5
    .param p0, "arg0"    # [S
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Lcom/inca/security/q;
    .param p3, "arg3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    move v1, v0

    .line 61
    :goto_0
    if-ge v0, p3, :cond_0

    .line 176
    add-int v0, p1, v3

    invoke-virtual {p2, p0, v0}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v4

    .line 115
    shl-int/lit8 v0, v3, 0x1

    .line 141
    add-int v3, v0, v4

    .line 48
    add-int/lit8 v0, v1, 0x1

    shl-int v1, v4, v1

    or-int/2addr v1, v2

    move v2, v1

    move v1, v0

    .line 61
    goto :goto_0

    .line 153
    :cond_0
    return v2
.end method


# virtual methods
.method public IiiiIIIIii(Lcom/inca/security/q;)I
    .locals 5
    .param p1, "arg0"    # Lcom/inca/security/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    move v1, v0

    .line 117
    :goto_0
    iget v4, p0, Lcom/inca/security/p;->IIIIiiIiII:I

    if-ge v0, v4, :cond_0

    .line 97
    iget-object v0, p0, Lcom/inca/security/p;->IiIiIiiIii:[S

    invoke-virtual {p1, v0, v3}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v4

    .line 105
    shl-int/lit8 v0, v3, 0x1

    .line 120
    add-int v3, v0, v4

    .line 180
    add-int/lit8 v0, v1, 0x1

    shl-int v1, v4, v1

    or-int/2addr v1, v2

    move v2, v1

    move v1, v0

    .line 117
    goto :goto_0

    .line 146
    :cond_0
    return v2
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/inca/security/p;->IiIiIiiIii:[S

    invoke-static {v0}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 165
    return-void
.end method

.method public iIiIIiIIIi(Lcom/inca/security/q;)I
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 19
    .line 46
    iget v0, p0, Lcom/inca/security/p;->IIIIiiIiII:I

    move v1, v0

    move v2, v3

    :goto_0
    if-eqz v0, :cond_0

    .line 44
    shl-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/inca/security/p;->IiIiIiiIii:[S

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v5, v2}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v1

    add-int/2addr v1, v4

    move v2, v1

    move v1, v0

    .line 46
    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lcom/inca/security/p;->IIIIiiIiII:I

    shl-int v0, v3, v0

    sub-int v0, v2, v0

    return v0
.end method
