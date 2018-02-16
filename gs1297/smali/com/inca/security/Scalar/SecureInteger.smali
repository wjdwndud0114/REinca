.class public Lcom/inca/security/Scalar/SecureInteger;
.super Ljava/lang/Object;
.source "SecureInteger.java"

# interfaces
.implements Lcom/inca/security/Interface/SecureInteger;
.implements Lcom/inca/security/Interface/BaseVerifier;


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/inca/security/Scalar/SecureInteger;->set(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public abs()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public add(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public add(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 30
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public and(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    and-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public and(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 110
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    and-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public decrease()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public divide(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    div-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public divide(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 54
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equal(I)Z
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equal(Lcom/inca/security/Interface/SecureInteger;)Z
    .locals 2
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 138
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()D
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    int-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public increase()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public max(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 82
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public max(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 86
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public min(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public min(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 78
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public mod(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    rem-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public mod(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 62
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public multiply(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 42
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public multiply(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 46
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public nagate()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    mul-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public or(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 114
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    or-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public or(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 118
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public pow(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    int-to-double v2, v1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public pow(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 6
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 70
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    int-to-double v2, v1

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public set(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    .line 15
    return-void
.end method

.method public set(Lcom/inca/security/Interface/SecureInteger;)V
    .locals 1
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    .line 19
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    int-to-short v0, v0

    return v0
.end method

.method public subtract(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    sub-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public subtract(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 38
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public xor(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/inca/security/Scalar/SecureInteger;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    xor-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/Scalar/SecureInteger;-><init>(I)V

    return-object v0
.end method

.method public xor(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureLong;
    .locals 4
    .param p1, "obj"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 126
    new-instance v0, Lcom/inca/security/Scalar/SecureLong;

    iget v1, p0, Lcom/inca/security/Scalar/SecureInteger;->mValue:I

    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v2

    xor-int/2addr v1, v2

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/Scalar/SecureLong;-><init>(J)V

    return-object v0
.end method
