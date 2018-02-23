.class public Lcom/inca/security/dc;
.super Ljava/lang/Thread;
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
.field public synthetic IIIIiiIiII:Z

.field public final synthetic IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;


# direct methods
.method private synthetic constructor <init>(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inca/security/dc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 488
    iput-boolean v0, p0, Lcom/inca/security/dc;->IIIIiiIiII:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/ee;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p2, "arg1"    # Lcom/inca/security/ee;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/inca/security/dc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

    return-void
.end method


# virtual methods
.method public IiiiIIIIii()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/dc;->IIIIiiIiII:Z

    .line 324
    invoke-virtual {p0}, Lcom/inca/security/dc;->interrupt()V

    .line 311
    invoke-virtual {p0}, Lcom/inca/security/dc;->join()V

    .line 293
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 406
    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/dc;
    .local v0, "this":Lcom/inca/security/dc;
    :goto_0
    iget-boolean v1, v0, Lcom/inca/security/dc;->IIIIiiIiII:Z

    if-nez v1, :cond_1

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/dc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Interface/ObjectIntegrityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/inca/security/dc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Interface/ObjectIntegrityManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/inca/security/Interface/ObjectIntegrityManager;->checkIntegrity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/inca/security/dc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/4 v2, 0x2

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 226
    :cond_0
    const-wide/16 v2, 0x1770

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 207
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 432
    :cond_1
    return-void
.end method
