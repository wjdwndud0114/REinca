.class public Lcom/inca/security/i;
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


# instance fields
.field public synthetic IIIIiiIiII:Lcom/inca/security/p;

.field public synthetic IIIiiiiIII:[Lcom/inca/security/p;

.field public synthetic IIiIiIIIii:[S

.field public final synthetic IiIiIIIiIi:Lcom/inca/security/n;

.field public synthetic IiIiIiiIii:[Lcom/inca/security/p;

.field public synthetic IiiIiiiIiI:I


# direct methods
.method public constructor <init>(Lcom/inca/security/n;)V
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/n;

    .prologue
    const/16 v1, 0x10

    .line 31
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/inca/security/i;->IiIiIIIiIi:Lcom/inca/security/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/i;->IIiIiIIIii:[S

    .line 138
    new-array v0, v1, [Lcom/inca/security/p;

    iput-object v0, p0, Lcom/inca/security/i;->IIIiiiiIII:[Lcom/inca/security/p;

    .line 132
    new-array v0, v1, [Lcom/inca/security/p;

    iput-object v0, p0, Lcom/inca/security/i;->IiIiIiiIii:[Lcom/inca/security/p;

    .line 162
    const/4 v0, 0x0

    new-instance v1, Lcom/inca/security/p;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/inca/security/p;-><init>(I)V

    iput-object v1, p0, Lcom/inca/security/i;->IIIIiiIiII:Lcom/inca/security/p;

    .line 94
    iput v0, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    return-void
.end method


# virtual methods
.method public IiiiIIIIii(Lcom/inca/security/q;I)I
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/q;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inca/security/i;->IIiIiIIIii:[S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/inca/security/i;->IIIiiiiIII:[Lcom/inca/security/p;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/inca/security/p;->iIiIIiIIIi(Lcom/inca/security/q;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 123
    :cond_0
    const/16 v0, 0x8

    .line 179
    iget-object v1, p0, Lcom/inca/security/i;->IIiIiIIIii:[S

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/inca/security/i;->IiIiIiiIii:[Lcom/inca/security/p;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/inca/security/p;->iIiIIiIIIi(Lcom/inca/security/q;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/inca/security/i;->IIIIiiIiII:Lcom/inca/security/p;

    invoke-virtual {v1, p1}, Lcom/inca/security/p;->iIiIIiIIIi(Lcom/inca/security/q;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 65
    goto :goto_0
.end method

.method public IiiiIIIIii()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/inca/security/i;->IIiIiIIIii:[S

    invoke-static {v1}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    move v1, v0

    .line 67
    :goto_0
    iget v2, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    if-ge v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/inca/security/i;->IIIiiiiIII:[Lcom/inca/security/p;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/inca/security/p;->IiiiIIIIii()V

    .line 58
    iget-object v2, p0, Lcom/inca/security/i;->IiIiIiiIii:[Lcom/inca/security/p;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/inca/security/p;->IiiiIIIIii()V

    move v1, v0

    .line 67
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inca/security/i;->IIIIiiIiII:Lcom/inca/security/p;

    invoke-virtual {v0}, Lcom/inca/security/p;->IiiiIIIIii()V

    .line 97
    return-void
.end method

.method public IiiiIIIIii(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x3

    .line 165
    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/i;
    .local v0, "this":Lcom/inca/security/i;
    :goto_0
    iget v1, v0, Lcom/inca/security/i;->IiiIiiiIiI:I

    if-ge v1, p1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/inca/security/i;->IIIiiiiIII:[Lcom/inca/security/p;

    iget v2, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    new-instance v3, Lcom/inca/security/p;

    invoke-direct {v3, v4}, Lcom/inca/security/p;-><init>(I)V

    aput-object v3, v1, v2

    .line 56
    iget-object v1, p0, Lcom/inca/security/i;->IiIiIiiIii:[Lcom/inca/security/p;

    iget v2, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    new-instance v3, Lcom/inca/security/p;

    invoke-direct {v3, v4}, Lcom/inca/security/p;-><init>(I)V

    aput-object v3, v1, v2

    .line 165
    iget v1, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/i;->IiiIiiiIiI:I

    move-object v0, p0

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
