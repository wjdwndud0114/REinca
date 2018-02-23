.class public Lcom/inca/security/x;
.super Ljava/lang/Object;
.source "w"


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:I

.field public synthetic IiIiIIIiIi:[B

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    return-void
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x43

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x43

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public IiiiIIIIii(I)B
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 188
    if-gez v0, :cond_0

    .line 86
    iget v1, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    aget-byte v0, v1, v0

    return v0
.end method

.method public IiiiIIIIii()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iget v1, p0, Lcom/inca/security/x;->IIIiiiiIII:I

    sub-int/2addr v0, v1

    .line 176
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/inca/security/x;->IiiIiiiIiI:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    iget v3, p0, Lcom/inca/security/x;->IIIiiiiIII:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    iget v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iget v1, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    if-lt v0, v1, :cond_1

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    .line 153
    :cond_1
    iget v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iput v0, p0, Lcom/inca/security/x;->IIIiiiiIII:I

    goto :goto_0
.end method

.method public IiiiIIIIii(B)V
    .locals 3
    .param p1, "arg0"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    iget v1, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    aput-byte p1, v0, v1

    .line 12
    iget v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iget v1, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    if-lt v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/inca/security/x;->IiiiIIIIii()V

    .line 85
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    if-eq v0, p1, :cond_1

    .line 124
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    .line 182
    :cond_1
    const/4 v0, 0x0

    iput p1, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    .line 56
    iput v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    .line 19
    iput v0, p0, Lcom/inca/security/x;->IIIiiiiIII:I

    .line 46
    return-void
.end method

.method public IiiiIIIIii(II)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget v1, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 175
    if-gez v1, :cond_0

    .line 152
    iget v2, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    add-int/2addr v1, v2

    :cond_0
    move v0, p2

    .line 119
    .end local p2    # "arg1":I
    .local v0, "arg1":I
    :goto_0
    if-eqz p2, :cond_3

    .line 155
    iget v2, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    if-lt v1, v2, :cond_1

    .line 130
    const/4 v1, 0x0

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    iget v3, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iget-object v4, p0, Lcom/inca/security/x;->IiIiIIIiIi:[B

    aget-byte v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    aput-byte v4, v2, v3

    .line 190
    iget v2, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    iget v3, p0, Lcom/inca/security/x;->IiIiIiiIii:I

    if-lt v2, v3, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/inca/security/x;->IiiiIIIIii()V

    .line 119
    :cond_2
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "arg1":I
    .restart local p2    # "arg1":I
    move v0, p2

    .end local p2    # "arg1":I
    .restart local v0    # "arg1":I
    goto :goto_0

    .line 199
    :cond_3
    return-void
.end method

.method public IiiiIIIIii(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/inca/security/x;->iIiIIiIIIi()V

    .line 67
    iput-object p1, p0, Lcom/inca/security/x;->IiiIiiiIiI:Ljava/io/OutputStream;

    .line 96
    return-void
.end method

.method public IiiiIIIIii(Z)V
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    const/4 v0, 0x0

    .line 146
    if-nez p1, :cond_0

    .line 179
    iput v0, p0, Lcom/inca/security/x;->IIIiiiiIII:I

    .line 166
    iput v0, p0, Lcom/inca/security/x;->IIIIiiIiII:I

    .line 168
    :cond_0
    return-void
.end method

.method public iIiIIiIIIi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/inca/security/x;->IiiiIIIIii()V

    .line 97
    iput-object v0, p0, Lcom/inca/security/x;->IiiIiiiIiI:Ljava/io/OutputStream;

    .line 105
    return-void
.end method
