.class public Lcom/inca/security/aa;
.super Lcom/inca/security/v;
.source "u"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:[I

.field public synthetic IiIiIiiIii:I

.field public final synthetic IiiIiiiIiI:Lcom/inca/security/y;

.field public synthetic IiiIiiiIiI:[I


# direct methods
.method public constructor <init>(Lcom/inca/security/y;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/y;

    .prologue
    .line 281
    const/16 v0, 0x10

    const/16 v1, 0x1100

    iput-object p1, p0, Lcom/inca/security/aa;->IiiIiiiIiI:Lcom/inca/security/y;

    invoke-direct {p0, p1}, Lcom/inca/security/v;-><init>(Lcom/inca/security/y;)V

    .line 467
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/inca/security/aa;->IiiIiiiIiI:[I

    .line 384
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/inca/security/aa;->IIIIiiIiII:[I

    return-void
.end method


# virtual methods
.method public IIiIIiIiIi(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 242
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/inca/security/aa;->iIiIIiIIIi(I)V

    move v1, v0

    .line 285
    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method public IiIiiIiiII(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/inca/security/aa;->IiIiIiiIii:I

    return-void
.end method

.method public IiiiIIIIii(II)I
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/inca/security/aa;->IiiIiiiIiI:[I

    mul-int/lit16 v1, p2, 0x110

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public IiiiIIIIii(Lcom/inca/security/u;II)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-super {p0, p1, p2, p3}, Lcom/inca/security/v;->IiiiIIIIii(Lcom/inca/security/u;II)V

    .line 344
    iget-object v0, p0, Lcom/inca/security/aa;->IIIIiiIiII:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p3

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {p0, p3}, Lcom/inca/security/aa;->iIiIIiIIIi(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public iIiIIiIIIi(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 294
    iget v0, p0, Lcom/inca/security/aa;->IiIiIiiIii:I

    iget-object v1, p0, Lcom/inca/security/aa;->IiiIiiiIiI:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/inca/security/aa;->IiiiIIIIii(II[II)V

    .line 251
    iget-object v0, p0, Lcom/inca/security/aa;->IIIIiiIiII:[I

    iget v1, p0, Lcom/inca/security/aa;->IiIiIiiIii:I

    aput v1, v0, p1

    .line 459
    return-void
.end method
