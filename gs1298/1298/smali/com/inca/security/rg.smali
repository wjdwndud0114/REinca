.class public Lcom/inca/security/rg;
.super Ljava/lang/Object;
.source "mc"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/AppGuard/AppGuardEventListener;)V
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
    .line 2711
    iput-object p1, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 2396
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/fc;

    .line 2497
    iget v2, v0, Lcom/inca/security/fc;->IiiIiiiIiI:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3430
    :pswitch_0
    iget-object v2, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/AppGuard/AppGuardEventListener;

    move-result-object v2

    iget v3, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-interface {v2, v3, v0}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onEvent(I[B)V

    goto :goto_0

    .line 2491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3246
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/AppGuard/AppGuardEventListener;

    move-result-object v2

    iget v3, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-interface {v2, v3, v0}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onError(I[B)V

    goto :goto_0

    .line 3043
    :pswitch_2
    iget-object v2, p0, Lcom/inca/security/rg;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/AppGuard/AppGuardEventListener;

    move-result-object v2

    iget v3, v0, Lcom/inca/security/fc;->IIIIiiIiII:I

    iget-object v0, v0, Lcom/inca/security/fc;->IiIiIiiIii:[B

    invoke-interface {v2, v3, v0}, Lcom/inca/security/AppGuard/AppGuardEventListener;->onDetected(I[B)V

    goto :goto_0

    .line 2491
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
