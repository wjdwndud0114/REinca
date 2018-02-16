.class public Lcom/inca/security/jf;
.super Ljava/lang/Object;
.source "mc"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;


# direct methods
.method public constructor <init>(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 2574
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2068
    iget-object v0, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/fc;

    .line 2911
    iget v2, v0, Lcom/inca/security/fc;->IiiIiiiIiI:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2198
    :pswitch_0
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3429
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v3

    iget v4, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3273
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIiIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2620
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIiIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IIiIIiIiIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v3

    iget v4, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3426
    :pswitch_2
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3437
    iget-object v2, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/jf;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Lcom/inca/security/Core/AppGuardEngine;)Landroid/os/Handler;

    move-result-object v3

    iget v4, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2785
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
