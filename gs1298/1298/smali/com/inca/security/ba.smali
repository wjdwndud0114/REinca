.class public Lcom/inca/security/ba;
.super Ljava/lang/Thread;
.source "ea"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/fa;->IiiiIIIIii(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/fa;


# direct methods
.method public constructor <init>(Lcom/inca/security/fa;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/fa;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/inca/security/ba;->IiIiIiiIii:Lcom/inca/security/fa;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 395
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "MuHiCrH5EuX~Bo\u0002zOoEtB5aZeU" #android.intent.action.MAIN

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v3, "\u001a7\u001f+\u00140\u001fw\u00127\u000f<\u0015-U:\u001a-\u001e>\u0014+\u0002w3\u00166\u001c" #android.intent.category.HOME

    invoke-static {v3}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    iget-object v3, p0, Lcom/inca/security/ba;->IiIiIiiIii:Lcom/inca/security/fa;

    iget-object v3, v3, Lcom/inca/security/fa;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 482
    :try_start_1
    const-string v2, "MuHiCrH5Ch\u0002K^tO~_h" #android.os.Process

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 209
    const-string v2, "2\u00125\u0017\t\t6\u0018<\u0008*" #killProcess

    invoke-static {v2}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 319
    const-string v2, "vUKE\u007f" #myPid

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 272
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 398
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "\u00118\r8U5\u001a7\u001cw( \u0008-\u001e4" #java.lang.System

    invoke-static {v2}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 449
    const-string v3, "IcEo" #exit

    invoke-static {v3}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 244
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 222
    :catch_1
    move-exception v2

    goto :goto_1
.end method
