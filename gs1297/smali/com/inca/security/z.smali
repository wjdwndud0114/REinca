.class public Lcom/inca/security/z;
.super Ljava/lang/Object;
.source "u"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IIIIiiIiII:Lcom/inca/security/f;

.field public synthetic IiIiIiiIii:[S


# direct methods
.method public constructor <init>(Lcom/inca/security/f;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/f;

    .prologue
    .line 32
    const/16 v0, 0x300

    iput-object p1, p0, Lcom/inca/security/z;->IIIIiiIiII:Lcom/inca/security/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    return-void
.end method


# virtual methods
.method public IiiiIIIIii(ZBB)I
    .locals 7
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # B
    .param p3, "arg2"    # B

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 192
    const/4 v1, 0x1

    .line 60
    const/4 v0, 0x7

    .line 54
    if-eqz p1, :cond_1

    move v3, v0

    .line 10
    :goto_0
    if-ltz v3, :cond_1

    .line 47
    shr-int v3, p2, v0

    and-int/lit8 v3, v3, 0x1

    .line 173
    shr-int v4, p3, v0

    and-int/lit8 v4, v4, 0x1

    .line 39
    iget-object v5, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v1

    aget-short v5, v5, v6

    invoke-static {v5, v4}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 135
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v4

    .line 145
    if-eq v3, v4, :cond_0

    .line 20
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 201
    :goto_1
    if-ltz v0, :cond_2

    .line 197
    shr-int v0, p3, v1

    and-int/lit8 v4, v0, 0x1

    .line 185
    iget-object v0, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    aget-short v0, v0, v2

    invoke-static {v0, v4}, Lcom/inca/security/u;->IiiiIIIIii(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 28
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, -0x1

    or-int v1, v2, v4

    move v2, v1

    move v1, v0

    .line 201
    goto :goto_1

    .line 10
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    move v2, v1

    move v1, v0

    .line 201
    goto :goto_1

    .line 200
    :cond_2
    return v3
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    invoke-static {v0}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    return-void
.end method

.method public IiiiIIIIii(Lcom/inca/security/u;B)V
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v1, 0x1

    .line 85
    const/4 v0, 0x7

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    .line 33
    shr-int v0, p2, v1

    and-int/lit8 v3, v0, 0x1

    .line 164
    iget-object v0, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    invoke-virtual {p1, v0, v2, v3}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 104
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, -0x1

    or-int v1, v2, v3

    move v2, v1

    move v1, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(Lcom/inca/security/u;BB)V
    .locals 8
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # B
    .param p3, "arg2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5
    .line 170
    const/4 v0, 0x7

    move v2, v0

    move v4, v0

    move v3, v1

    move v0, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 189
    shr-int v2, p3, v4

    and-int/lit8 v5, v2, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 68
    shr-int v0, p2, v4

    and-int/lit8 v0, v0, 0x1

    .line 15
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    .line 108
    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_1
    move v7, v2

    move v2, v0

    move v0, v7

    .line 194
    :goto_2
    iget-object v6, p0, Lcom/inca/security/z;->IiIiIiiIii:[S

    invoke-virtual {p1, v6, v0, v5}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 202
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v4, -0x1

    or-int/2addr v3, v5

    move v4, v0

    move v7, v0

    move v0, v2

    move v2, v7

    .line 170
    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_1
    return-void

    :cond_2
    move v2, v0

    move v0, v3

    goto :goto_2
.end method
