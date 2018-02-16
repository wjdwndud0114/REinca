.class public Lcom/inca/security/cc;
.super Ljava/lang/Object;
.source "mc"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/Core/AppGuardEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = null
.end annotation


# instance fields
.field public final synthetic IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

.field private synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:I


# direct methods
.method public constructor <init>(Lcom/inca/security/Core/AppGuardEngine;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 805
    const/4 v0, 0x0

    const-string v1, ""

    iput-object p1, p0, Lcom/inca/security/cc;->IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput-object v1, p0, Lcom/inca/security/cc;->IiIiIiiIii:Ljava/lang/String;

    .line 675
    iput v0, p0, Lcom/inca/security/cc;->IiiIiiiIiI:I

    .line 1493
    iput-object p2, p0, Lcom/inca/security/cc;->IiIiIiiIii:Ljava/lang/String;

    .line 1047
    return-void
.end method


# virtual methods
.method public IiiiIIIIii()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 918
    const-string v0, "N0K\u0018N\'6"

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inca/security/cc;->IiIiIiiIii:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/inca/security/cc;->IiiIiiiIiI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/inca/security/cc;->IiiIiiiIiI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inca/security/cc;->IiiIiiiIiI:I

    .line 1277
    return-void
.end method

.method public IiiiIIIIii(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/inca/security/cc;->IiIiIiiIii:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
