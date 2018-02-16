.class public Lcom/inca/security/q;
.super Ljava/lang/Object;
.source "p"


# static fields
.field public static final synthetic IIIiiiiIII:I = 0x5

.field public static final synthetic IiIiIiiIii:I = -0x1000000

.field public static final synthetic IiiIiiiIiI:I = 0xb

.field public static final synthetic IiiiiIiiIi:I = 0x800


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIiIiIIIii:I

.field public synthetic IiIiIIIiIi:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii([S)V
    .locals 3
    .param p0, "arg0"    # [S

    .prologue
    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 5
    const/16 v2, 0x400

    add-int/lit8 v0, v1, 0x1

    aput-short v2, p0, v1

    move v1, v0

    .line 183
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public final IiiiIIIIii(I)I
    .locals 6
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    .line 146
    .end local p1    # "arg0":I
    :goto_0
    if-eqz p1, :cond_1

    .line 179
    iget v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 166
    iget v2, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    iget v3, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    sub-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x1f

    .line 81
    iget v3, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    iget v4, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 168
    shl-int/lit8 v1, v1, 0x1

    rsub-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 16
    iget v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 112
    iget v2, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 176
    iget v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 146
    :cond_0
    add-int/lit8 p1, v0, -0x1

    move v0, p1

    goto :goto_0

    .line 48
    :cond_1
    return v1
.end method

.method public IiiiIIIIii([SI)I
    .locals 5
    .param p1, "arg0"    # [S
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, -0x80000000

    .line 157
    aget-short v0, p1, p2

    .line 78
    iget v1, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 25
    iget v2, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    xor-int/2addr v2, v3

    xor-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 152
    iput v1, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 119
    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    .line 174
    iget v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    .line 130
    iget v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 32
    iget v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 159
    :cond_1
    iget v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 50
    iget v2, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 126
    ushr-int/lit8 v1, v0, 0x5

    sub-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    .line 12
    iget v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    .line 85
    iget v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 100
    iget v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    .line 164
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final IiiiIIIIii()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    const/4 v1, -0x1

    iput v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    .line 58
    iput v1, p0, Lcom/inca/security/q;->IIiIiIIIii:I

    move v1, v0

    .line 117
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 22
    iget v0, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    shl-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/inca/security/q;->IIIIiiIiII:I

    move v1, v0

    .line 117
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public final IiiiIIIIii(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    .line 56
    return-void
.end method

.method public final iIiIIiIIIi()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/q;->IiIiIIIiIi:Ljava/io/InputStream;

    .line 181
    return-void
.end method
