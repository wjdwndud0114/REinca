.class public Lcom/inca/security/ha;
.super Ljava/lang/Object;
.source "ua"


# instance fields
.field public synthetic IIIIiiIiII:I

.field public synthetic IIIiiiiIII:Z

.field public synthetic IiIiIIIiIi:J

.field public synthetic IiIiIiiIii:[B

.field public synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 6

    .prologue
    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v5, p0, Lcom/inca/security/ha;->IiiIiiiIiI:Ljava/lang/String;

    .line 30
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/inca/security/ha;->IiIiIiiIii:[B

    .line 87
    iput-wide v2, p0, Lcom/inca/security/ha;->IiIiIIIiIi:J

    .line 165
    iput v1, p0, Lcom/inca/security/ha;->IIIIiiIiII:I

    .line 19
    iput-boolean v0, p0, Lcom/inca/security/ha;->IIIiiiiIII:Z

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic IiiiIIIIii(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/inca/security/ha;->IIIiiiiIII:Z

    .line 0
    return-void
.end method

.method public synthetic IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/inca/security/ha;->IIIiiiiIII:Z

    return v0
.end method
