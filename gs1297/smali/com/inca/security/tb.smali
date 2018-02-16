.class public Lcom/inca/security/tb;
.super Ljava/lang/Object;
.source "vb"


# instance fields
.field private synthetic IIIIiiIiII:F

.field private synthetic IIIiiiiIII:I

.field private synthetic IIiIiIIIii:F

.field private synthetic IiIiIIIiIi:F

.field private synthetic IiIiIiiIii:F

.field private synthetic IiiIiiiIiI:I


# direct methods
.method public constructor <init>(IFFFFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F
    .param p5, "arg4"    # F
    .param p6, "arg5"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/inca/security/tb;->IIIiiiiIII:I

    .line 94
    iput p2, p0, Lcom/inca/security/tb;->IIiIiIIIii:F

    .line 72
    iput p3, p0, Lcom/inca/security/tb;->IiIiIiiIii:F

    .line 30
    iput p4, p0, Lcom/inca/security/tb;->IIIIiiIiII:F

    .line 87
    iput p5, p0, Lcom/inca/security/tb;->IiIiIIIiIi:F

    .line 165
    iput p6, p0, Lcom/inca/security/tb;->IiiIiiiIiI:I

    .line 124
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

    xor-int/lit8 v0, v0, 0x59

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x7b

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
.method public IIiIIiIiIi()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/inca/security/tb;->IiIiIiiIii:F

    return v0
.end method

.method public IiIiiIiiII()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/inca/security/tb;->IIIIiiIiII:F

    return v0
.end method

.method public IiiiIIIIii()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/inca/security/tb;->IiIiIIIiIi:F

    return v0
.end method

.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inca/security/tb;->IIIiiiiIII:I

    return v0
.end method

.method public iIiIIiIIIi()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/inca/security/tb;->IIiIiIIIii:F

    return v0
.end method

.method public iIiIIiIIIi()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/inca/security/tb;->IiiIiiiIiI:I

    return v0
.end method
