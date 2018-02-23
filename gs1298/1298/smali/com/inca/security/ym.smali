.class public Lcom/inca/security/ym;
.super Ljava/lang/Thread;
.source "pc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/mg;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/mg;


# direct methods
.method public constructor <init>(Lcom/inca/security/mg;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v0}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/da;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 142
    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 91
    invoke-static {v3}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/uc;

    move-result-object v3

    iget-object v4, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 73
    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 116
    invoke-static {v5}, Lcom/inca/security/mg;->iIiIIiIIIi(Lcom/inca/security/mg;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 4
    invoke-static {v7}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()I

    move-result v7

    iget-object v8, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    .line 3
    invoke-static {v8}, Lcom/inca/security/mg;->iIiIIiIIIi(Lcom/inca/security/mg;)I

    move-result v8

    .line 89
    invoke-virtual/range {v0 .. v8}, Lcom/inca/security/da;->IiiiIIIIii(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;Lcom/inca/security/uc;Ljava/lang/String;Ljava/lang/String;III)I

    .line 113
    iget-object v0, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    iget-object v1, p0, Lcom/inca/security/ym;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/da;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inca/security/da;->IiiiIIIIii()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;Z)Z
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Lcom/inca/security/Exception/AppGuardException;->printStackTrace()V

    goto :goto_0
.end method
