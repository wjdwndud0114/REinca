.class public Lcom/inca/security/v;
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


# instance fields
.field public synthetic IIIIiiIiII:[Lcom/inca/security/a;

.field public synthetic IIIiiiiIII:[S

.field public synthetic IiIiIIIiIi:[Lcom/inca/security/a;

.field public synthetic IiIiIiiIii:Lcom/inca/security/a;

.field public final synthetic IiiIiiiIiI:Lcom/inca/security/y;


# direct methods
.method public constructor <init>(Lcom/inca/security/y;)V
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/y;

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x10

    .line 18
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/inca/security/v;->IiiIiiiIiI:Lcom/inca/security/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    .line 34
    new-array v0, v4, [Lcom/inca/security/a;

    iput-object v0, p0, Lcom/inca/security/v;->IiIiIIIiIi:[Lcom/inca/security/a;

    .line 2
    new-array v0, v4, [Lcom/inca/security/a;

    iput-object v0, p0, Lcom/inca/security/v;->IIIIiiIiII:[Lcom/inca/security/a;

    const/4 v0, 0x0

    .line 42
    new-instance v1, Lcom/inca/security/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/inca/security/a;-><init>(I)V

    iput-object v1, p0, Lcom/inca/security/v;->IiIiIiiIii:Lcom/inca/security/a;

    move v1, v0

    .line 150
    :goto_0
    if-ge v0, v4, :cond_0

    .line 107
    iget-object v0, p0, Lcom/inca/security/v;->IiIiIIIiIi:[Lcom/inca/security/a;

    new-instance v2, Lcom/inca/security/a;

    invoke-direct {v2, v5}, Lcom/inca/security/a;-><init>(I)V

    aput-object v2, v0, v1

    .line 51
    iget-object v2, p0, Lcom/inca/security/v;->IIIIiiIiII:[Lcom/inca/security/a;

    new-instance v3, Lcom/inca/security/a;

    invoke-direct {v3, v5}, Lcom/inca/security/a;-><init>(I)V

    add-int/lit8 v0, v1, 0x1

    aput-object v3, v2, v1

    move v1, v0

    .line 150
    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public IiiiIIIIii(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    invoke-static {v1}, Lcom/inca/security/u;->IiiiIIIIii([S)V

    move v1, v0

    .line 129
    :goto_0
    if-ge v0, p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/inca/security/v;->IiIiIIIiIi:[Lcom/inca/security/a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/inca/security/a;->IiiiIIIIii()V

    .line 177
    iget-object v2, p0, Lcom/inca/security/v;->IIIIiiIiII:[Lcom/inca/security/a;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/inca/security/a;->IiiiIIIIii()V

    move v1, v0

    .line 129
    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/inca/security/v;->IiIiIiiIii:Lcom/inca/security/a;

    invoke-virtual {v0}, Lcom/inca/security/a;->IiiiIIIIii()V

    .line 196
    return-void
.end method

.method public IiiiIIIIii(II[II)V
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # [I
    .param p4, "arg3"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    aget-short v1, v1, v0

    invoke-static {v1}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v2

    .line 387
    iget-object v1, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    aget-short v1, v1, v0

    invoke-static {v1}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v1

    .line 216
    iget-object v3, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    aget-short v3, v3, v5

    invoke-static {v3}, Lcom/inca/security/u;->IiiiIIIIii(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 388
    iget-object v4, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    aget-short v4, v4, v5

    invoke-static {v4}, Lcom/inca/security/u;->iIiIIiIIIi(I)I

    move-result v4

    add-int/2addr v4, v1

    move v1, v0

    .line 460
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_2

    .line 483
    if-lt v0, p2, :cond_1

    .line 286
    :cond_0
    return-void

    .line 300
    :cond_1
    add-int v1, p4, v0

    iget-object v5, p0, Lcom/inca/security/v;->IiIiIIIiIi:[Lcom/inca/security/a;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0}, Lcom/inca/security/a;->IiiiIIIIii(I)I

    move-result v5

    add-int/2addr v5, v2

    add-int/lit8 v0, v0, 0x1

    aput v5, p3, v1

    move v1, v0

    .line 460
    goto :goto_0

    :cond_2
    move v1, v0

    .line 310
    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 342
    if-ge v0, p2, :cond_0

    .line 357
    add-int v1, p4, v0

    iget-object v2, p0, Lcom/inca/security/v;->IIIIiiIiII:[Lcom/inca/security/a;

    aget-object v2, v2, p1

    add-int/lit8 v5, v0, -0x8

    invoke-virtual {v2, v5}, Lcom/inca/security/a;->IiiiIIIIii(I)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    aput v2, p3, v1

    move v1, v0

    .line 310
    goto :goto_1

    :cond_3
    move v1, v0

    .line 296
    :goto_2
    if-ge v0, p2, :cond_0

    .line 404
    add-int v2, p4, v1

    iget-object v0, p0, Lcom/inca/security/v;->IiIiIiiIii:Lcom/inca/security/a;

    add-int/lit8 v3, v1, -0x8

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v0, v3}, Lcom/inca/security/a;->IiiiIIIIii(I)I

    move-result v0

    add-int v3, v4, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, p3, v2

    move v1, v0

    .line 296
    goto :goto_2
.end method

.method public IiiiIIIIii(Lcom/inca/security/u;II)V
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/u;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-ge p2, v3, :cond_0

    .line 74
    iget-object v0, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    invoke-virtual {p1, v0, v1, v1}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 64
    iget-object v0, p0, Lcom/inca/security/v;->IiIiIIIiIi:[Lcom/inca/security/a;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/inca/security/a;->iIiIIiIIIi(Lcom/inca/security/u;I)V

    .line 378
    :goto_0
    return-void

    .line 53
    :cond_0
    add-int/lit8 p2, p2, -0x8

    .line 43
    iget-object v0, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    invoke-virtual {p1, v0, v1, v2}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 203
    if-ge p2, v3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    invoke-virtual {p1, v0, v2, v1}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 118
    iget-object v0, p0, Lcom/inca/security/v;->IIIIiiIiII:[Lcom/inca/security/a;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/inca/security/a;->iIiIIiIIIi(Lcom/inca/security/u;I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/inca/security/v;->IIIiiiiIII:[S

    invoke-virtual {p1, v0, v2, v2}, Lcom/inca/security/u;->IiiiIIIIii([SII)V

    .line 368
    iget-object v0, p0, Lcom/inca/security/v;->IiIiIiiIii:Lcom/inca/security/a;

    add-int/lit8 v1, p2, -0x8

    invoke-virtual {v0, p1, v1}, Lcom/inca/security/a;->iIiIIiIIIi(Lcom/inca/security/u;I)V

    goto :goto_0
.end method
