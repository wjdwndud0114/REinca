.class public Lcom/inca/security/d;
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
.field public final synthetic IIIIiiIiII:Lcom/inca/security/y;

.field public synthetic IIIiiiiIII:I

.field public synthetic IIiIIIIIii:Z

.field public synthetic IIiIiIIIii:I

.field public synthetic IIiiIiIIii:I

.field public synthetic IiIiIIIiIi:I

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:I

.field public synthetic IiiiiIiiIi:I

.field public synthetic iiIIIIIiiI:Z

.field public synthetic iiIIIiiiiI:I

.field public synthetic iiIiIIIiiI:I

.field public synthetic iiiiIIIiii:I


# direct methods
.method public constructor <init>(Lcom/inca/security/y;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/y;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/inca/security/d;->IIIIiiIiII:Lcom/inca/security/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IiiiIIIIii()V
    .locals 2

    .prologue
    .line 456
    const/4 v0, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/inca/security/d;->iiIIIiiiiI:I

    iput-boolean v0, p0, Lcom/inca/security/d;->iiIIIIIiiI:Z

    return-void
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/inca/security/d;->iiIIIiiiiI:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iIiIIiIIIi()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/inca/security/d;->iiIIIiiiiI:I

    iput-boolean v0, p0, Lcom/inca/security/d;->iiIIIIIiiI:Z

    return-void
.end method
