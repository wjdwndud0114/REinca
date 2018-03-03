.class public Lcom/inca/security/f;
.super Ljava/lang/Object;
.source "u"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/z;
    }
.end annotation


# instance fields
.field public final synthetic IIIIiiIiII:Lcom/inca/security/y;

.field public synthetic IIIiiiiIII:[Lcom/inca/security/z;

.field public synthetic IiIiIIIiIi:I

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:I


# direct methods
.method public constructor <init>(Lcom/inca/security/y;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/y;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/inca/security/f;->IIIIiiIiII:Lcom/inca/security/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IiiiIIIIii(IB)Lcom/inca/security/z;
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # B

    .prologue
    .line 4
    iget-object v0, p0, Lcom/inca/security/f;->IIIiiiiIII:[Lcom/inca/security/z;

    iget v1, p0, Lcom/inca/security/f;->IiIiIiiIii:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public IiiiIIIIii()V
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x1

    iget v1, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    iget v2, p0, Lcom/inca/security/f;->IiIiIIIiIi:I

    add-int/2addr v1, v2

    shl-int v2, v0, v1

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/inca/security/f;->IIIiiiiIII:[Lcom/inca/security/z;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/inca/security/z;->IiiiIIIIii()V

    move v1, v0

    .line 142
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(II)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v0, p0, Lcom/inca/security/f;->IIIiiiiIII:[Lcom/inca/security/z;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/inca/security/f;->IiIiIIIiIi:I

    if-ne v0, p1, :cond_1

    .line 158
    :cond_0
    return-void

    .line 147
    :cond_1
    iput p1, p0, Lcom/inca/security/f;->IiIiIIIiIi:I

    .line 21
    shl-int v0, v2, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inca/security/f;->IiIiIiiIii:I

    .line 83
    iput p2, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    .line 14
    iget v0, p0, Lcom/inca/security/f;->IiiIiiiIiI:I

    iget v1, p0, Lcom/inca/security/f;->IiIiIIIiIi:I

    add-int/2addr v0, v1

    shl-int/2addr v2, v0

    .line 41
    new-array v0, v2, [Lcom/inca/security/z;

    iput-object v0, p0, Lcom/inca/security/f;->IIIiiiiIII:[Lcom/inca/security/z;

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 191
    iget-object v3, p0, Lcom/inca/security/f;->IIIiiiiIII:[Lcom/inca/security/z;

    new-instance v4, Lcom/inca/security/z;

    invoke-direct {v4, p0}, Lcom/inca/security/z;-><init>(Lcom/inca/security/f;)V

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v3, v1

    move v1, v0

    .line 136
    goto :goto_0
.end method
