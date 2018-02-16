.class public Lcom/inca/security/la;
.super Ljava/lang/Object;
.source "oa"


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:[B

.field public synthetic IiIiIIIiIi:J

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v2, p0, Lcom/inca/security/la;->IIIIiiIiII:I

    .line 31
    iput v2, p0, Lcom/inca/security/la;->IiIiIiiIii:I

    .line 98
    iput-wide v0, p0, Lcom/inca/security/la;->IiIiIIIiIi:J

    .line 99
    iput-object v3, p0, Lcom/inca/security/la;->IIIiiiiIII:[B

    .line 132
    iput-object v3, p0, Lcom/inca/security/la;->IiiIiiiIiI:Ljava/lang/String;

    return-void
.end method

.method public static synthetic IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
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

    xor-int/lit8 v0, v0, 0x6a

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x1f

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
