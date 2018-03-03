.class public Lcom/inca/security/l;
.super Ljava/lang/Object;
.source "s"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/m;
    }
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:I

.field public synthetic IiIiIIIiIi:[Lcom/inca/security/m;

.field public synthetic IiIiIiiIii:I

.field public final synthetic IiiIiiiIiI:Lcom/inca/security/n;


# direct methods
.method public constructor <init>(Lcom/inca/security/n;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/n;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/inca/security/l;->IiiIiiiIiI:Lcom/inca/security/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IiiiIIIIii(IB)Lcom/inca/security/m;
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # B

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inca/security/l;->IiIiIIIiIi:[Lcom/inca/security/m;

    iget v1, p0, Lcom/inca/security/l;->IIIiiiiIII:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public IiiiIIIIii()V
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x1

    iget v1, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    iget v2, p0, Lcom/inca/security/l;->IiIiIiiIii:I

    add-int/2addr v1, v2

    shl-int v2, v0, v1

    .line 10
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    iget-object v3, p0, Lcom/inca/security/l;->IiIiIIIiIi:[Lcom/inca/security/m;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/inca/security/m;->IiiiIIIIii()V

    move v1, v0

    .line 10
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public IiiiIIIIii(II)V
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, Lcom/inca/security/l;->IiIiIIIiIi:[Lcom/inca/security/m;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/inca/security/l;->IiIiIiiIii:I

    if-ne v0, p1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 194
    :cond_1
    iput p1, p0, Lcom/inca/security/l;->IiIiIiiIii:I

    .line 202
    shl-int v0, v2, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inca/security/l;->IIIiiiiIII:I

    .line 103
    iput p2, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    .line 13
    iget v0, p0, Lcom/inca/security/l;->IIIIiiIiII:I

    iget v1, p0, Lcom/inca/security/l;->IiIiIiiIii:I

    add-int/2addr v0, v1

    shl-int/2addr v2, v0

    .line 206
    new-array v0, v2, [Lcom/inca/security/m;

    iput-object v0, p0, Lcom/inca/security/l;->IiIiIIIiIi:[Lcom/inca/security/m;

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 167
    iget-object v3, p0, Lcom/inca/security/l;->IiIiIIIiIi:[Lcom/inca/security/m;

    new-instance v4, Lcom/inca/security/m;

    invoke-direct {v4, p0}, Lcom/inca/security/m;-><init>(Lcom/inca/security/l;)V

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v3, v1

    move v1, v0

    .line 59
    goto :goto_0
.end method
