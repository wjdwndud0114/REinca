.class public Lcom/inca/security/da;
.super Ljava/lang/Object;
.source "ma"


# instance fields
.field private synthetic IiIiIiiIii:Lcom/inca/security/ea;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    return-void
.end method


# virtual methods
.method public synthetic IiiiIIIIii(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;Lcom/inca/security/uc;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/Interface/BaseEventInvoker;
    .param p3, "arg2"    # Lcom/inca/security/uc;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;
    .param p6, "arg5"    # I
    .param p7, "arg6"    # I
    .param p8, "arg7"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lcom/inca/security/ea;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p8

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/inca/security/ea;-><init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;ILjava/lang/String;Ljava/lang/String;IILcom/inca/security/uc;)V

    iput-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    .line 87
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->start()V

    .line 165
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->IiiiIIIIii()I

    move-result v0

    return v0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->interrupt()V

    .line 61
    :cond_0
    return-void
.end method

.method public synthetic IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->IIiIIiIiIi()Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/inca/security/da;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v0}, Lcom/inca/security/ea;->IiiiIIIIii()[B

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
