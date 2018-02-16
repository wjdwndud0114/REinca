.class public Lcom/inca/security/wb;
.super Ljava/lang/Object;
.source "ca"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic IIiiIiIIii:J = 0x376aa917a00fa216L


# instance fields
.field public synthetic IIIIiiIiII:J

.field public synthetic IIIiiiiIII:Ljava/util/ArrayList;

.field public synthetic IIiIIIIIii:Ljava/lang/String;

.field public synthetic IIiIiIIIii:Ljava/util/ArrayList;

.field public synthetic IiIiIIIiIi:J

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:I

.field public synthetic IiiiiIiiIi:Ljava/util/ArrayList;

.field public synthetic iiIIIIIiiI:Ljava/util/ArrayList;

.field public synthetic iiIIIiiiiI:Ljava/util/ArrayList;

.field public synthetic iiIiIIIiiI:I

.field public synthetic iiiIiiiiII:J

.field public synthetic iiiiIIIiii:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Lcom/inca/security/wb;->IiiIiiiIiI:I

    .line 138
    iput-wide v2, p0, Lcom/inca/security/wb;->iiiIiiiiII:J

    .line 132
    iput-wide v2, p0, Lcom/inca/security/wb;->IiIiIIIiIi:J

    .line 162
    iput v1, p0, Lcom/inca/security/wb;->IiIiIiiIii:I

    .line 94
    iput v1, p0, Lcom/inca/security/wb;->iiIiIIIiiI:I

    .line 72
    iput-wide v2, p0, Lcom/inca/security/wb;->IIIIiiIiII:J

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->iiiiIIIiii:Ljava/util/ArrayList;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->iiIIIIIiiI:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->IIiIiIIIii:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->IiiiiIiiIi:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->IIIiiiiIII:Ljava/util/ArrayList;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inca/security/wb;->iiIIIiiiiI:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lcom/inca/security/wb;->IIiIIIIIii:Ljava/lang/String;

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

    xor-int/lit8 v0, v0, 0x4d

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x2a

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
