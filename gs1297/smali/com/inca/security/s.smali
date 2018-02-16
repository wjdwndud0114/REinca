.class public Lcom/inca/security/s;
.super Ljava/lang/Object;
.source "j"


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:I

.field public synthetic IIiIIIIIii:I

.field public synthetic IIiIiIIIii:[B

.field public synthetic IIiiIiIIii:I

.field public synthetic IiIiIIIiIi:I

.field public synthetic IiIiIiiIii:Z

.field public synthetic IiiIiiiIiI:Ljava/io/InputStream;

.field public synthetic IiiiiIiiIi:I

.field public synthetic iiIIIiiiiI:I

.field public synthetic iiiiIIIiii:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IIiIIiIiIi()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/s;->IiiIiiiIiI:Ljava/io/InputStream;

    return-void
.end method

.method public IiIIIIIIIi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    .line 133
    iput v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    .line 170
    iput v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    .line 163
    iput-boolean v0, p0, Lcom/inca/security/s;->IiIiIiiIii:Z

    .line 189
    invoke-virtual {p0}, Lcom/inca/security/s;->IiiiIIIIii()V

    .line 92
    return-void
.end method

.method public IiIiiIiiII()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    iget v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    .line 108
    iget v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    iget v1, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    if-le v0, v1, :cond_1

    .line 194
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v0, v1

    .line 202
    iget v1, p0, Lcom/inca/security/s;->iiIIIiiiiI:I

    if-le v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/inca/security/s;->iIiIIiIIIi()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/inca/security/s;->IiiiIIIIii()V

    .line 59
    :cond_1
    return-void
.end method

.method public IiiiIIIIii(I)B
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    iget v1, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v2, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public IiiiIIIIii()I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public IiiiIIIIii(III)I
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/inca/security/s;->IiIiIiiIii:Z

    if-eqz v0, :cond_0

    .line 156
    iget v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v0, p1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    if-le v0, v1, :cond_0

    .line 47
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v1, p1

    sub-int p3, v0, v1

    .line 173
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 135
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v0, v1

    add-int v2, v0, p1

    .line 20
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v0, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    add-int v3, v2, v1

    aget-byte v0, v0, v3

    iget-object v3, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    add-int v4, v2, v1

    sub-int/2addr v4, p2

    aget-byte v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    return v1
.end method

.method public IiiiIIIIii()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/inca/security/s;->IiIiIiiIii:Z

    if-eqz v0, :cond_2

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v1, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    .line 152
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    iget v2, p0, Lcom/inca/security/s;->iiiiIIIiii:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 119
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    iget v1, p0, Lcom/inca/security/s;->iiiiIIIiii:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    .line 16
    :cond_2
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    rsub-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/inca/security/s;->IIiIIIIIii:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    sub-int/2addr v0, v1

    .line 61
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/inca/security/s;->IiiIiiiIiI:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    iget v3, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v4, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 115
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    iput v0, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    .line 205
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v1, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    add-int/2addr v0, v1

    .line 153
    iget v1, p0, Lcom/inca/security/s;->iiIIIiiiiI:I

    if-le v0, v1, :cond_3

    .line 160
    iget v0, p0, Lcom/inca/security/s;->iiIIIiiiiI:I

    iget v1, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    .line 157
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/s;->IiIiIiiIii:Z

    goto :goto_0
.end method

.method public IiiiIIIIii(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 185
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    .line 28
    iget v0, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/inca/security/s;->IiIiIIIiIi:I

    .line 143
    iget v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    .line 200
    iget v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    .line 184
    return-void
.end method

.method public IiiiIIIIii(III)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/inca/security/s;->IIIIiiIiII:I

    .line 8
    iput p2, p0, Lcom/inca/security/s;->iiiiIIIiii:I

    .line 159
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 50
    iget-object v1, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/inca/security/s;->IIiIIIIIii:I

    if-eq v1, v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/inca/security/s;->iiiiiiiIii()V

    .line 114
    iput v0, p0, Lcom/inca/security/s;->IIiIIIIIii:I

    .line 85
    iget v0, p0, Lcom/inca/security/s;->IIiIIIIIii:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    .line 33
    :cond_1
    iget v0, p0, Lcom/inca/security/s;->IIiIIIIIii:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/inca/security/s;->iiIIIiiiiI:I

    .line 164
    return-void
.end method

.method public IiiiIIIIii(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/inca/security/s;->IiiIiiiIiI:Ljava/io/InputStream;

    return-void
.end method

.method public iIiIIiIIIi()V
    .locals 6

    .prologue
    .line 0
    iget v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v1, p0, Lcom/inca/security/s;->IiiiiIiiIi:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/inca/security/s;->IIIIiiIiII:I

    sub-int/2addr v0, v1

    .line 96
    if-lez v0, :cond_0

    .line 161
    add-int/lit8 v0, v0, -0x1

    .line 117
    :cond_0
    iget v1, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    iget v2, p0, Lcom/inca/security/s;->IIIiiiiIII:I

    add-int/2addr v1, v2

    sub-int v3, v1, v0

    .line 105
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_1

    .line 120
    iget-object v4, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    iget-object v1, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    add-int v5, v0, v2

    aget-byte v5, v1, v5

    add-int/lit8 v1, v2, 0x1

    aput-byte v5, v4, v2

    move v2, v1

    .line 105
    goto :goto_0

    .line 180
    :cond_1
    iget v1, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/inca/security/s;->IIiiIiIIii:I

    .line 195
    return-void
.end method

.method public iiiiiiiIii()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/s;->IIiIiIIIii:[B

    return-void
.end method
