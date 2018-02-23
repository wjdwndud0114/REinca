.class public Lcom/inca/security/ke;
.super Ljava/lang/Thread;
.source "pc"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:Z

.field public final synthetic IiIiIiiIii:Lcom/inca/security/mg;


# direct methods
.method public constructor <init>(Lcom/inca/security/mg;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 303
    iput-boolean v0, p0, Lcom/inca/security/ke;->IIIIiiIiII:Z

    return-void
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/ke;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/ke;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/inca/security/ke;->IIIIiiIiII:Z

    return v0
.end method


# virtual methods
.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/ke;->IIIIiiIiII:Z

    .line 453
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/ke;
    .local v0, "this":Lcom/inca/security/ke;
    :goto_0
    iget-object v1, v0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 493
    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/inca/security/ke;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/inca/security/ke;->IIIIiiIiII:Z

    if-eqz v1, :cond_2

    .line 1274
    :cond_1
    :goto_1
    return-void

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BZZ)V

    .line 249
    iget-object v1, p0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    new-instance v2, Lcom/inca/security/lk;

    invoke-direct {v2, p0}, Lcom/inca/security/lk;-><init>(Lcom/inca/security/ke;)V

    invoke-static {v1, v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 990
    iget-object v1, p0, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1274
    invoke-virtual {p0}, Lcom/inca/security/ke;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/inca/security/ke;->IIIIiiIiII:Z

    if-nez v1, :cond_1

    .line 1065
    new-instance v1, Lcom/inca/security/re;

    invoke-direct {v1, p0}, Lcom/inca/security/re;-><init>(Lcom/inca/security/ke;)V

    .line 673
    invoke-virtual {v1}, Lcom/inca/security/re;->start()V

    goto :goto_1

    .line 292
    :catch_0
    move-exception v1

    goto :goto_1
.end method
