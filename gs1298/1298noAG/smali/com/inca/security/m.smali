.class public Lcom/inca/security/m;
.super Ljava/lang/Object;
.source "s"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:[S

.field public final synthetic IiIiIiiIii:Lcom/inca/security/l;


# direct methods
.method public constructor <init>(Lcom/inca/security/l;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/l;

    .prologue
    .line 141
    const/16 v0, 0x300

    iput-object p1, p0, Lcom/inca/security/m;->IiIiIiiIii:Lcom/inca/security/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/inca/security/m;->IIIIiiIiII:[S

    return-void
.end method


# virtual methods
.method public IiiiIIIIii(Lcom/inca/security/q;)B
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x1

    .line 155
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/inca/security/m;->IIIIiiIiII:[S

    invoke-virtual {p1, v2, v0}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v0

    or-int/2addr v0, v1

    .line 130
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 32
    int-to-byte v0, v0

    return v0
.end method

.method public IiiiIIIIii(Lcom/inca/security/q;B)B
    .locals 5
    .param p1, "arg0"    # Lcom/inca/security/q;
    .param p2, "arg1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x100

    .line 8
    const/4 v0, 0x1

    .line 126
    :cond_0
    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x1

    .line 12
    shl-int/lit8 v2, p2, 0x1

    int-to-byte p2, v2

    .line 114
    iget-object v2, p0, Lcom/inca/security/m;->IIIIiiIiII:[S

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v2

    .line 85
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    .line 100
    if-eq v1, v2, :cond_1

    move v1, v0

    .line 164
    :goto_0
    if-ge v1, v4, :cond_2

    .line 104
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/inca/security/m;->IIIIiiIiII:[S

    invoke-virtual {p1, v2, v0}, Lcom/inca/security/q;->IiiiIIIIii([SI)I

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    if-lt v0, v4, :cond_0

    .line 183
    :cond_2
    int-to-byte v0, v0

    return v0
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inca/security/m;->IIIIiiIiII:[S

    invoke-static {v0}, Lcom/inca/security/q;->IiiiIIIIii([S)V

    .line 78
    return-void
.end method
