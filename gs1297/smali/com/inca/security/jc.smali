.class public Lcom/inca/security/jc;
.super Ljava/lang/Thread;
.source "mc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Core/AppGuardEngine;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;Z)V
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
    .line 750
    iput-object p1, p0, Lcom/inca/security/jc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 765
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "~\u0004{\u0018p\u0003{Dv\u0004k\u000fq\u001e1\u000b|\u001ev\u0005qDR+V$"

    invoke-static {v3}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    const-string v3, "1f4z?a4&9f$m>|~k1|5o?z)&\u0018G\u001dM"

    invoke-static {v3}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1490
    :try_start_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 995
    :goto_1
    :try_start_2
    const-string v2, "~\u0004{\u0018p\u0003{Dp\u00191:m\u0005|\u000fl\u0019"

    invoke-static {v2}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1290
    const-string v2, "c9d<X\"g3m#{"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1009
    const-string v2, "\u0007f:v\u000e"

    invoke-static {v2}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1368
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1025
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const-string v2, ":i&i~d1f7&\u0003q#|5e"

    invoke-static {v2}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1374
    const-string v3, "z\u0012v\u001e"

    invoke-static {v3}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1088
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1057
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/inca/security/jc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v2

    invoke-static {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1119
    :goto_3
    return-void

    .line 568
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 1457
    :catch_1
    move-exception v2

    goto :goto_3

    .line 950
    :catch_2
    move-exception v2

    goto :goto_2

    .line 1466
    :catch_3
    move-exception v2

    goto :goto_1
.end method
