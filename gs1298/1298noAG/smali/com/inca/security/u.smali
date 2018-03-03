.class public Lcom/inca/security/u;
.super Ljava/lang/Object;
.source "x"


# static fields
.field public static final synthetic IIIIiiIiII:I = 0x2

.field public static final synthetic IIiiIiIIii:I = -0x1000000

.field public static final synthetic IiIiIiiIii:I = 0x800

.field public static final synthetic IiiIiiiIiI:I = 0x5

.field public static final synthetic IiiiiIiiIi:I = 0x6

.field public static final synthetic iiIIIiiiiI:I = 0xb

.field private static synthetic iiIiIIIiiI:[I


# instance fields
.field public synthetic IIIiiiiIII:I

.field public synthetic IIiIIIIIii:I

.field public synthetic IIiIiIIIii:J

.field public synthetic IiIiIIIiIi:J

.field public synthetic iiIIIIIiiI:Ljava/io/OutputStream;

.field public synthetic iiiiIIIiii:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 63
    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Lcom/inca/security/u;->iiIiIIIiiI:[I

    .line 143
    const/16 v3, 0x9

    .line 200
    const/16 v0, 0x8

    move v2, v0

    :goto_0
    if-ltz v0, :cond_1

    .line 172
    sub-int v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v8, v0

    .line 1
    sub-int v1, v3, v2

    shl-int v4, v8, v1

    move v1, v0

    .line 79
    :goto_1
    if-ge v0, v4, :cond_0

    .line 127
    sget-object v5, Lcom/inca/security/u;->iiIiIIIiiI:[I

    shl-int/lit8 v0, v2, 0x6

    sub-int v6, v4, v1

    shl-int/lit8 v6, v6, 0x6

    sub-int v7, v3, v2

    add-int/lit8 v7, v7, -0x1

    ushr-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    move v1, v0

    .line 79
    goto :goto_1

    .line 200
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii(I)I
    .locals 2
    .param p0, "arg0"    # I

    .prologue
    .line 14
    sget-object v0, Lcom/inca/security/u;->iiIiIIIiiI:[I

    ushr-int/lit8 v1, p0, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static IiiiIIIIii(II)I
    .locals 3
    .param p0, "arg0"    # I
    .param p1, "arg1"    # I

    .prologue
    .line 24
    sget-object v0, Lcom/inca/security/u;->iiIiIIIiiI:[I

    sub-int v1, p0, p1

    neg-int v2, p1

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x7ff

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static IiiiIIIIii([S)V
    .locals 3
    .param p0, "arg0"    # [S

    .prologue
    .line 194
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 202
    const/16 v2, 0x400

    add-int/lit8 v0, v1, 0x1

    aput-short v2, p0, v1

    move v1, v0

    .line 194
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public static iIiIIiIIIi(I)I
    .locals 2
    .param p0, "arg0"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/inca/security/u;->iiIiIIIiiI:[I

    rsub-int v1, p0, 0x800

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public IIiIIiIiIi()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    .line 160
    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    const-wide v4, 0xff000000L

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 157
    :cond_0
    iget-wide v0, p0, Lcom/inca/security/u;->IIiIiIIIii:J

    iget v3, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/inca/security/u;->IIiIiIIIii:J

    .line 78
    iget v0, p0, Lcom/inca/security/u;->iiiiIIIiii:I

    .line 152
    :goto_0
    const/16 v1, 0xff

    iget-object v3, p0, Lcom/inca/security/u;->iiIIIIIiiI:Ljava/io/OutputStream;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 155
    iget v0, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    if-nez v0, :cond_2

    .line 130
    iget-wide v0, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    long-to-int v0, v0

    ushr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/inca/security/u;->iiiiIIIiii:I

    .line 190
    :cond_1
    iget v0, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    .line 26
    iget-wide v0, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    .line 139
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public IiIiiIiiII()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inca/security/u;->iiIIIIIiiI:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 115
    return-void
.end method

.method public IiiiIIIIii()J
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/inca/security/u;->IIiIiIIIii:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public IiiiIIIIii()V
    .locals 6

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/inca/security/u;->IIiIiIIIii:J

    .line 105
    iput-wide v4, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    .line 120
    iput v2, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 180
    iput v1, p0, Lcom/inca/security/u;->IIiIIIIIii:I

    .line 195
    iput v0, p0, Lcom/inca/security/u;->iiiiIIIiii:I

    .line 146
    return-void
.end method

.method public IiiiIIIIii(II)V
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    add-int/lit8 v0, p2, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_2

    .line 12
    iget v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 114
    ushr-int v0, p1, v1

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 85
    iget-wide v2, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    iget v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    .line 100
    :cond_0
    iget v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 164
    iget v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 104
    invoke-virtual {p0}, Lcom/inca/security/u;->IIiIIiIiIi()V

    .line 50
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_2
    return-void
.end method

.method public IiiiIIIIii(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/OutputStream;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/inca/security/u;->iiIIIIIiiI:Ljava/io/OutputStream;

    .line 106
    return-void
.end method

.method public IiiiIIIIii([SII)V
    .locals 10
    .param p1, "arg0"    # [S
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    aget-short v1, p1, p2

    .line 69
    iget v2, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    ushr-int/lit8 v2, v2, 0xb

    mul-int/2addr v2, v1

    .line 192
    if-nez p3, :cond_1

    .line 54
    iput v2, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 109
    rsub-int v2, v1, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p1, p2

    move-object v0, p0

    .line 82
    .end local p0    # "this":Lcom/inca/security/u;
    .local v0, "this":Lcom/inca/security/u;
    :goto_0
    iget v1, v0, Lcom/inca/security/u;->IIIiiiiIII:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 93
    iget v1, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 151
    invoke-virtual {p0}, Lcom/inca/security/u;->IIiIIiIiIi()V

    .line 70
    :cond_0
    return-void

    .line 173
    .end local v0    # "this":Lcom/inca/security/u;
    .restart local p0    # "this":Lcom/inca/security/u;
    :cond_1
    iget-wide v4, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    int-to-long v6, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/inca/security/u;->IiIiIIIiIi:J

    .line 39
    iget v3, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/inca/security/u;->IIIiiiiIII:I

    .line 135
    ushr-int/lit8 v2, v1, 0x5

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p1, p2

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/u;
    .restart local v0    # "this":Lcom/inca/security/u;
    goto :goto_0
.end method

.method public iIiIIiIIIi()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/inca/security/u;->IIiIIiIiIi()V

    move v1, v0

    .line 81
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public iiiiiiiIii()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inca/security/u;->iiIIIIIiiI:Ljava/io/OutputStream;

    .line 161
    return-void
.end method
