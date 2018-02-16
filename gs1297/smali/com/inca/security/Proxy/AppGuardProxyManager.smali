.class public Lcom/inca/security/Proxy/AppGuardProxyManager;
.super Ljava/lang/Object;
.source "sb"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;,
        Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPI;
    }
.end annotation


# static fields
.field private static synthetic IIIiiiiIII:Ljava/lang/Object;


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/Object;

.field private synthetic IIiIiIIIii:Ljava/lang/Thread;

.field private synthetic IiIiIIIiIi:Ljava/util/Queue;

.field private synthetic IiIiIiiIii:Z

.field private final synthetic IiiIiiiIiI:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIiiiiIII:Ljava/lang/Object;

    .line 130
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string v0, "3g=x1|9j<m"

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiIiiiIiI:Z

    .line 157
    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    .line 78
    iput-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIiiIii:Z

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIIIiIi:Ljava/util/Queue;

    .line 152
    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    .line 86
    :try_start_0
    const-string v0, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 66
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "UoPs[hP/WnZuQo@/wnZuQy@"

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    .line 183
    const-string v3, "com.inca.security.AppGuard.AppGuardEventListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 133
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 170
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v3

    .line 163
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    new-instance v0, Lcom/inca/security/Proxy/AppGuardProxyManager$1;

    invoke-direct {v0, p0}, Lcom/inca/security/Proxy/AppGuardProxyManager$1;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;)V

    .line 63
    invoke-virtual {v0}, Lcom/inca/security/Proxy/AppGuardProxyManager$1;->start()V

    .line 185
    return-void

    .line 6
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private synthetic IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;
    .locals 8
    .param p1, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    .prologue
    const/4 v2, 0x0

    .line 118
    .line 315
    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v1, v2

    .line 492
    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :goto_1
    return-object v1

    .line 368
    .restart local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :try_start_1
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 252
    const-string v1, "x1}#m"

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 271
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p0

    .line 421
    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    .local v0, "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :goto_2
    :try_start_2
    iget-object v1, v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 286
    :cond_0
    new-instance v1, Lcom/inca/security/Proxy/AppGuardProxyManager$3;

    invoke-direct {v1, p0}, Lcom/inca/security/Proxy/AppGuardProxyManager$3;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;)V

    iput-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    .line 264
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 417
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 294
    const-string v1, "FdGd@"

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 343
    goto :goto_1

    .line 231
    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    .restart local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :catch_0
    move-exception v1

    move-object v0, p0

    .line 421
    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    .restart local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    goto :goto_2

    .line 458
    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 285
    goto :goto_1

    .line 438
    .restart local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :pswitch_1
    :try_start_3
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 386
    const-string v1, "\"m#}=m"

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 336
    goto :goto_1

    .line 344
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 213
    goto :goto_1

    .line 371
    :pswitch_2
    :try_start_4
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 234
    const-string v1, "D`ArQ"

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    .line 331
    goto/16 :goto_1

    .line 409
    :catch_3
    move-exception v1

    move-object v1, v2

    .line 433
    goto/16 :goto_1

    .line 481
    :pswitch_3
    :try_start_5
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 254
    const-string v1, "k<m1f%x"

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 218
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v2

    .line 369
    goto/16 :goto_1

    .line 487
    :catch_4
    move-exception v1

    move-object v1, v2

    .line 448
    goto/16 :goto_1

    .line 431
    :pswitch_4
    :try_start_6
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 284
    const-string v3, "g[bArWiUoSdP"

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 327
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, v2

    .line 338
    goto/16 :goto_1

    .line 239
    :catch_5
    move-exception v1

    move-object v1, v2

    .line 308
    goto/16 :goto_1

    .line 490
    :pswitch_5
    :try_start_7
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 400
    const-string v3, "|\"i3m\u0004g%k8M&m>|"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 321
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v1, v2

    .line 225
    goto/16 :goto_1

    .line 442
    :catch_6
    move-exception v1

    move-object v1, v2

    .line 236
    goto/16 :goto_1

    .line 345
    :pswitch_6
    :try_start_8
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 215
    const-string v1, "]r}o]u]`XhNdP"

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 337
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v1

    goto/16 :goto_1

    .line 452
    :catch_7
    move-exception v1

    move-object v1, v2

    .line 326
    goto/16 :goto_1

    .line 295
    :pswitch_7
    :try_start_9
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 451
    const-string v1, "7m$^5z#a?f"

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 348
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-result-object v1

    goto/16 :goto_1

    .line 276
    :catch_8
    move-exception v1

    move-object v1, v2

    .line 246
    goto/16 :goto_1

    .line 358
    :pswitch_8
    :try_start_a
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 366
    const-string v3, "rQuwnZoQb@h[o`hYd[t@"

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 250
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-object v1, v2

    .line 354
    goto/16 :goto_1

    .line 461
    :catch_9
    move-exception v1

    move-object v1, v2

    .line 316
    goto/16 :goto_1

    .line 298
    :pswitch_9
    :try_start_b
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 307
    const-string v3, "#m$M&m>|\u001ca#|5f5z"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/inca/security/AppGuard/AppGuardEventListener;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 397
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inca/security/AppGuard/AppGuardEventListener;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    move-object v1, v2

    .line 210
    goto/16 :goto_1

    .line 395
    :catch_a
    move-exception v1

    move-object v1, v2

    .line 480
    goto/16 :goto_1

    .line 247
    :pswitch_a
    :try_start_c
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 290
    const-string v3, "rQuw`XmV`Wj|`ZeXdF"

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 301
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 235
    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x1

    .line 233
    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    .line 401
    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    .line 301
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    move-object v1, v2

    .line 398
    goto/16 :goto_1

    .line 412
    :catch_b
    move-exception v1

    move-object v1, v2

    .line 364
    goto/16 :goto_1

    .line 244
    :pswitch_b
    :try_start_d
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 222
    const-string v3, "{5|\u0005{5z\u0019l"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    move-object v1, v2

    .line 334
    goto/16 :goto_1

    .line 259
    :catch_c
    move-exception v1

    move-object v1, v2

    .line 257
    goto/16 :goto_1

    .line 304
    :pswitch_c
    :try_start_e
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    const-string v3, "Gd@TZhEtQBXhQo@Hp"

    invoke-static {v3}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 273
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    move-object v1, v2

    .line 437
    goto/16 :goto_1

    .line 317
    :catch_d
    move-exception v1

    move-object v1, v2

    .line 268
    goto/16 :goto_1

    .line 441
    :pswitch_d
    :try_start_f
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 219
    const-string v3, "#m$Z5{5z&m49"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 450
    iget-object v4, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    move-object v1, v2

    .line 353
    goto/16 :goto_1

    .line 266
    :catch_e
    move-exception v1

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;
    .param p1, "arg1"    # Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIIIiIi:Ljava/util/Queue;

    return-object v0
.end method

.method private synthetic IiiiIIIIii()Z
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    const-string v0, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    const-string v0, "]r}o]u]`XhNdP"

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIiiiiIII:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-direct {v0}, Lcom/inca/security/Proxy/AppGuardProxyManager;-><init>()V

    sput-object v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIiiiiIII:Ljava/lang/Object;

    .line 100
    :cond_0
    sget-object v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIiiiiIII:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onPreCreate()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIiiIii:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIiiIii:Z

    .line 1
    return-object v0
.end method

.method public onTrimWindows(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 102
    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    .local v0, "this":Lcom/inca/security/Proxy/AppGuardProxyManager;
    :goto_0
    iget-object v2, v0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIIIiiIiII:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 29
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 147
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 136
    new-instance v2, Lcom/inca/security/Proxy/AppGuardProxyManager$2;

    invoke-direct {v2, p0}, Lcom/inca/security/Proxy/AppGuardProxyManager$2;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;)V

    iput-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    .line 34
    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IIiIiIIIii:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIIIiIi:Ljava/util/Queue;

    monitor-enter v2

    .line 171
    :try_start_1
    iget-object v3, p0, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiIiIIIiIi:Ljava/util/Queue;

    new-instance v4, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    invoke-direct {v4, p0, p1, p2}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v2

    .line 121
    :goto_1
    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 121
    :cond_2
    new-instance v1, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 36
    :cond_3
    new-instance v1, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;-><init>(Lcom/inca/security/Proxy/AppGuardProxyManager;ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    goto :goto_1
.end method
