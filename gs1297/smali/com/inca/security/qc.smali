.class public Lcom/inca/security/qc;
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
.field public final synthetic IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

.field public synthetic IiIiIiiIii:Z


# direct methods
.method private synthetic constructor <init>(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inca/security/qc;->IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 451
    iput-boolean v0, p0, Lcom/inca/security/qc;->IiIiIiiIii:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/inca/security/Core/AppGuardEngine;Lcom/inca/security/ee;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;
    .param p2, "arg1"    # Lcom/inca/security/ee;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/inca/security/qc;-><init>(Lcom/inca/security/Core/AppGuardEngine;)V

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
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/qc;->IiIiIiiIii:Z

    .line 238
    invoke-virtual {p0}, Lcom/inca/security/qc;->interrupt()V

    .line 492
    invoke-virtual {p0}, Lcom/inca/security/qc;->join()V

    .line 246
    return-void
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public iIiIIiIIIi()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    move v1, v0

    move v2, v0

    .line 354
    :goto_0
    const v3, 0xf4240

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 307
    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5f5e100

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 397
    :goto_1
    return v0

    .line 395
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 247
    move-object v2, p0

    .end local p0    # "this":Lcom/inca/security/qc;
    .local v2, "this":Lcom/inca/security/qc;
    :goto_0
    iget-boolean v3, v2, Lcom/inca/security/qc;->IiIiIiiIii:Z

    if-nez v3, :cond_1

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/inca/security/qc;->IiiiIIIIii()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/inca/security/qc;->IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 233
    iget-object v3, p0, Lcom/inca/security/qc;->IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)I

    move-result v3

    if-le v3, v8, :cond_0

    .line 401
    new-instance v3, Landroid/content/Intent;

    const-string v4, "1f4z?a4&9f$m>|~i3|9g>&\u001dI\u0019F"

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    const-string v4, "\u001a7\u001f+\u00140\u001fw\u00127\u000f<\u0015-U:\u001a-\u001e>\u0014+\u0002w3\u00166\u001c"

    invoke-static {v4}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    :try_start_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_1
    :try_start_2
    const-string v3, "1f4z?a4&?{~X\"g3m#{"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 259
    const-string v3, "2\u00125\u0017\t\t6\u0018<\u0008*"

    invoke-static {v3}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 471
    const-string v3, "e)X9l"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 257
    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 489
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v3, "\u00118\r8U5\u001a7\u001cw( \u0008-\u001e4"

    invoke-static {v3}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 320
    const-string v4, "5p9|"

    invoke-static {v4}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 273
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, p0

    .line 255
    :goto_2
    :try_start_3
    iget-object v3, v2, Lcom/inca/security/qc;->IIIIiiIiII:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v3

    invoke-static {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 435
    :cond_0
    :goto_3
    const-wide/16 v4, 0x1770

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, p0

    .line 399
    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v3

    move-object v2, p0

    .line 255
    goto :goto_2

    .line 353
    :catch_1
    move-exception v3

    .line 415
    :cond_1
    return-void

    .line 463
    :catch_2
    move-exception v3

    goto :goto_3

    .line 398
    :catch_3
    move-exception v3

    goto :goto_1
.end method
