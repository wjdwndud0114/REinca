.class public Lcom/inca/security/mg;
.super Ljava/lang/Object;
.source "pc"

# interfaces
.implements Lcom/inca/security/Interface/BaseEventInvoker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/ke;,
        Lcom/inca/security/bh;,
        Lcom/inca/security/ti;
    }
.end annotation


# instance fields
.field private synthetic IIIIiiIiII:Lcom/inca/security/da;

.field private synthetic IIIiiiiIII:I

.field private synthetic IIiIIIIIii:Ljava/lang/String;

.field private synthetic IIiIIIIiIi:Landroid/content/Context;

.field private synthetic IIiIiIIIii:Z

.field private synthetic IIiiIiIIii:I

.field private synthetic IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

.field private synthetic IiIiIIIiIi:I

.field private synthetic IiIiIiiIii:Ljava/lang/Thread;

.field private synthetic IiiIiiiIiI:Z

.field private synthetic IiiiiIiiIi:Lcom/inca/security/uc;

.field private synthetic iiIIIIIiiI:Ljava/lang/String;

.field private synthetic iiIIIiiiiI:Z

.field private synthetic iiIiIIIiiI:Z

.field private synthetic iiiIiiiiII:Lcom/inca/security/ke;

.field private synthetic iiiiIIIiii:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;ZZ)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/AppGuard/AppGuardEventListener;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    const/16 v3, 0x7530

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v4, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 168
    iput-object v4, p0, Lcom/inca/security/mg;->IIIIiiIiII:Lcom/inca/security/da;

    .line 65
    iput-object v4, p0, Lcom/inca/security/mg;->IiIiIiiIii:Ljava/lang/Thread;

    .line 16
    iput v3, p0, Lcom/inca/security/mg;->IIiiIiIIii:I

    .line 61
    iput-boolean v2, p0, Lcom/inca/security/mg;->IIiIiIIIii:Z

    .line 176
    iput-boolean v2, p0, Lcom/inca/security/mg;->IiiIiiiIiI:Z

    .line 115
    iput-boolean v2, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    .line 141
    iput v2, p0, Lcom/inca/security/mg;->IiIiIIIiIi:I

    .line 205
    iput-boolean v1, p0, Lcom/inca/security/mg;->iiIiIIIiiI:Z

    .line 153
    iput-object v4, p0, Lcom/inca/security/mg;->IIiIIIIiIi:Landroid/content/Context;

    .line 40
    new-instance v3, Lcom/inca/security/ke;

    invoke-direct {v3, p0}, Lcom/inca/security/ke;-><init>(Lcom/inca/security/mg;)V

    iput-object v3, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    .line 157
    iput-boolean v2, p0, Lcom/inca/security/mg;->iiiiIIIiii:Z

    .line 78
    iput v1, p0, Lcom/inca/security/mg;->IIIiiiiIII:I

    .line 175
    iput-object v4, p0, Lcom/inca/security/mg;->IiiiiIiiIi:Lcom/inca/security/uc;

    .line 190
    iput-boolean v1, p0, Lcom/inca/security/mg;->IiiIiiiIiI:Z

    .line 26
    iput-boolean p4, p0, Lcom/inca/security/mg;->iiIiIIIiiI:Z

    .line 139
    iput-object p1, p0, Lcom/inca/security/mg;->IIiIIIIiIi:Landroid/content/Context;

    .line 159
    iget-object v3, p0, Lcom/inca/security/mg;->IIiIIIIiIi:Landroid/content/Context;

    invoke-static {v3}, Lcom/inca/security/Proxy/JNISoxProxy;->setContext(Landroid/content/Context;)V

    .line 126
    new-instance v3, Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {v3, p1, p2, p3}, Lcom/inca/security/Core/AppGuardEngine;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;Z)V

    iput-object v3, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 12
    iget-object v3, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 100
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "1C\u0000t\u0005R\u0002W<Z\u0013V\u001e@\u0015"

    invoke-static {v5}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inca/security/mg;->iiIIIIIiiI:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/inca/security/mg;->iiIIIIIiiI:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 104
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "1C\u0000t\u0005R\u0002W1C\u0000g\tC\u0015"

    invoke-static {v5}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "1C\u0000t\u0005R\u0002W3\\\u001e]\u0015P\u0004"

    invoke-static {v6}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    if-eqz v5, :cond_7

    .line 204
    if-nez v3, :cond_6

    .line 66
    const-string v2, "T\u0011^\u0015"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Lcom/inca/security/uc;->valueOf(Ljava/lang/String;)Lcom/inca/security/uc;

    move-result-object v2

    iput-object v2, p0, Lcom/inca/security/mg;->IiiiiIiiIi:Lcom/inca/security/uc;

    .line 163
    iget-object v2, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    iget-object v3, p0, Lcom/inca/security/mg;->IiiiiIiiIi:Lcom/inca/security/uc;

    invoke-virtual {v2, v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/uc;)V

    .line 92
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "1C\u0000t\u0005R\u0002W#G\u001fA\u0015z4"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    if-eqz v2, :cond_0

    .line 178
    const-string v3, "J"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 68
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 15
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    :goto_1
    if-nez v1, :cond_5

    .line 192
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    const-string v2, "1]\u0014A\u001fZ\u0014~\u0011]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    move-object v0, p0

    .line 191
    .end local p0    # "this":Lcom/inca/security/mg;
    .local v0, "this":Lcom/inca/security/mg;
    :goto_2
    new-instance v1, Lcom/inca/security/da;

    invoke-direct {v1}, Lcom/inca/security/da;-><init>()V

    iput-object v1, v0, Lcom/inca/security/mg;->IIIIiiIiII:Lcom/inca/security/da;

    .line 17
    new-instance v1, Lcom/inca/security/ym;

    invoke-direct {v1, p0}, Lcom/inca/security/ym;-><init>(Lcom/inca/security/mg;)V

    iput-object v1, p0, Lcom/inca/security/mg;->IiIiIiiIii:Ljava/lang/Thread;

    .line 187
    iget-object v1, p0, Lcom/inca/security/mg;->IiIiIiiIii:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 18
    new-instance v1, Lcom/inca/security/zi;

    invoke-direct {v1, p0}, Lcom/inca/security/zi;-><init>(Lcom/inca/security/mg;)V

    .line 402
    invoke-virtual {v1}, Lcom/inca/security/zi;->start()V

    .line 386
    .end local v0    # "this":Lcom/inca/security/mg;
    :cond_1
    return-void

    .line 10
    .restart local p0    # "this":Lcom/inca/security/mg;
    :cond_2
    new-instance v1, Lcom/inca/security/og;

    invoke-direct {v1, p0}, Lcom/inca/security/og;-><init>(Lcom/inca/security/mg;)V

    .line 24
    invoke-virtual {v1}, Lcom/inca/security/og;->start()V

    .line 21
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "1C\u0000t\u0005R\u0002W<Z\u0013V\u001e@\u0015\u0013\u0019@P}%\u007f<\u001fPJ\u001fFP^\u0005@\u0004\u0013\u0019]\u0003V\u0002GPG\u0018VPX\u0015JPZ\u001e\u00131]\u0014A\u001fZ\u0014~\u0015]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :catch_0
    move-exception v1

    .line 192
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    const-string v2, "1]\u0014A\u001fZ\u0014~\u0011]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/mg;
    .restart local v0    # "this":Lcom/inca/security/mg;
    goto :goto_2

    .line 10
    .end local v0    # "this":Lcom/inca/security/mg;
    .restart local p0    # "this":Lcom/inca/security/mg;
    :cond_3
    new-instance v1, Lcom/inca/security/og;

    invoke-direct {v1, p0}, Lcom/inca/security/og;-><init>(Lcom/inca/security/mg;)V

    .line 24
    invoke-virtual {v1}, Lcom/inca/security/og;->start()V

    .line 21
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "1C\u0000t\u0005R\u0002W<Z\u0013V\u001e@\u0015\u0013\u0019@P}%\u007f<\u001fPJ\u001fFP^\u0005@\u0004\u0013\u0019]\u0003V\u0002GPG\u0018VPX\u0015JPZ\u001e\u00131]\u0014A\u001fZ\u0014~\u0015]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :catchall_0
    move-exception v1

    .line 192
    iget-object v2, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    const-string v3, "1]\u0014A\u001fZ\u0014~\u0011]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v3}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 21
    throw v1

    .line 10
    :cond_4
    new-instance v1, Lcom/inca/security/og;

    invoke-direct {v1, p0}, Lcom/inca/security/og;-><init>(Lcom/inca/security/mg;)V

    .line 24
    invoke-virtual {v1}, Lcom/inca/security/og;->start()V

    .line 21
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "1C\u0000t\u0005R\u0002W<Z\u0013V\u001e@\u0015\u0013\u0019@P}%\u007f<\u001fPJ\u001fFP^\u0005@\u0004\u0013\u0019]\u0003V\u0002GPG\u0018VPX\u0015JPZ\u001e\u00131]\u0014A\u001fZ\u0014~\u0015]\u0019U\u0015@\u0004\u001d\u0008^\u001c"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, p0

    .line 191
    .end local p0    # "this":Lcom/inca/security/mg;
    .restart local v0    # "this":Lcom/inca/security/mg;
    goto/16 :goto_2

    .end local v0    # "this":Lcom/inca/security/mg;
    .restart local p0    # "this":Lcom/inca/security/mg;
    :cond_6
    move-object v2, v3

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto/16 :goto_1
.end method

.method public static synthetic IIiIIiIiIi(Lcom/inca/security/mg;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/inca/security/mg;->IIiIiIIIii:Z

    return v0
.end method

.method public static synthetic IIiIIiIiIi(Lcom/inca/security/mg;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/mg;
    .param p1, "arg1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/inca/security/mg;->iiiiIIIiii:Z

    return p1
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)I
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget v0, p0, Lcom/inca/security/mg;->IIIiiiiIII:I

    return v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Landroid/content/Context;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IIiIIIIiIi:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/da;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IIIIiiIiII:Lcom/inca/security/da;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/uc;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IiiiiIiiIi:Lcom/inca/security/uc;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->iiIIIIIiiI:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IiIiIiiIii:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/mg;
    .param p1, "arg1"    # Ljava/lang/Thread;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/inca/security/mg;->IiIiIiiIii:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    return v0
.end method

.method public static synthetic IiiiIIIIii(Lcom/inca/security/mg;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/mg;
    .param p1, "arg1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/inca/security/mg;->IIiIiIIIii:Z

    return p1
.end method

.method public static getUniqueClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-static {}, Lcom/inca/security/Core/AppGuardEngine;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/mg;)I
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget v0, p0, Lcom/inca/security/mg;->IIiiIiIIii:I

    return v0
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/mg;)Ljava/lang/String;
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inca/security/mg;->IIiIIIIIii:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/mg;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIiIIIiiI:Z

    return v0
.end method

.method public static synthetic iIiIIiIIIi(Lcom/inca/security/mg;Z)Z
    .locals 0
    .param p0, "arg0"    # Lcom/inca/security/mg;
    .param p1, "arg1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    return p1
.end method

.method public static queryUpdatable(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 311
    .line 474
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 323
    if-eqz p2, :cond_1

    .line 470
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "1C\u0000t\u0005R\u0002W1C\u0000g\tC\u0015"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "1C\u0000t\u0005R\u0002W3\\\u001e]\u0015P\u0004"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_1

    .line 473
    if-nez v0, :cond_0

    .line 445
    const-string v0, "T\u0011^\u0015"

    invoke-static {v0}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/inca/security/uc;->valueOf(Ljava/lang/String;)Lcom/inca/security/uc;

    move-result-object v6

    .line 443
    :cond_1
    new-instance v0, Lcom/inca/security/fa;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/inca/security/fa;-><init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;ILjava/lang/String;Ljava/lang/String;Lcom/inca/security/uc;)V

    .line 424
    invoke-virtual {v0}, Lcom/inca/security/fa;->start()V

    .line 478
    invoke-virtual {v0}, Lcom/inca/security/fa;->join()V

    .line 472
    invoke-virtual {v0}, Lcom/inca/security/fa;->IiiiIIIIii()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    move v0, v7

    .line 274
    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    move v0, v7

    .line 289
    goto :goto_0
.end method

.method public static setSecureScreen(Landroid/view/Window;)Z
    .locals 2
    .param p0, "arg0"    # Landroid/view/Window;

    .prologue
    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 320
    const/16 v1, 0x2000

    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    .line 333
    iget-boolean v1, p0, Lcom/inca/security/mg;->IiiIiiiIiI:Z

    if-nez v1, :cond_0

    .line 442
    .end local p0    # "this":Lcom/inca/security/mg;
    :goto_0
    return-void

    .restart local p0    # "this":Lcom/inca/security/mg;
    :cond_0
    move-object v0, p0

    .line 431
    .end local p0    # "this":Lcom/inca/security/mg;
    .local v0, "this":Lcom/inca/security/mg;
    :goto_1
    iget-boolean v1, v0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    if-nez v1, :cond_2

    .line 327
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 394
    goto :goto_1

    .line 263
    :catch_0
    move-exception v1

    move-object v0, p0

    .line 475
    :goto_2
    iget v1, v0, Lcom/inca/security/mg;->IiIiIIIiIi:I

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/inca/security/mg;->IIIIiiIiII:Lcom/inca/security/da;

    invoke-virtual {v1}, Lcom/inca/security/da;->IiiiIIIIii()V

    .line 490
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()V

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v1}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi()V

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 475
    goto :goto_2
.end method

.method public conditionCallback(II[B)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # [B

    .prologue
    .line 441
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inca/security/Core/AppGuardEngine;->conditionCallback(II[B)V

    .line 262
    :cond_0
    return-void
.end method

.method public focuschanged(Z)V
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Z)V

    .line 423
    :cond_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    return v0
.end method

.method public isResetCompleted()Z
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiiiIIIiii:Z

    .line 372
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 341
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inca/security/mg;->iiiiIIIiii:Z

    .line 215
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii()V

    .line 371
    iput v0, p0, Lcom/inca/security/mg;->IiIiIIIiIi:I

    .line 217
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x10

    .line 436
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inca/security/rc;->IiiiIIIIii()V

    .line 346
    :try_start_0
    const-string v1, "`8rA"

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 358
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 411
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "1C\u0000t\u0005R\u0002W<Z\u0013V\u001e@\u0015"

    invoke-static {v4}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    move-object v3, v2

    .line 243
    :goto_1
    if-eqz v2, :cond_0

    .line 298
    new-array v2, v6, [B

    .line 307
    new-array v4, v6, [B

    fill-array-data v4, :array_0

    .line 227
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-static {}, Lcom/inca/security/rc;->IiiiIIIIii()Lcom/inca/security/rc;

    move-result-object v1

    sget-object v3, Lcom/inca/security/lc;->IIIIiiIiII:Lcom/inca/security/lc;

    invoke-virtual {v1, v3, v2}, Lcom/inca/security/rc;->IiiiIIIIii(Lcom/inca/security/lc;[B)Z

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    invoke-virtual {v1}, Lcom/inca/security/ke;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    invoke-virtual {v1}, Lcom/inca/security/ke;->IiiiIIIIii()V

    .line 233
    iget-object v1, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    invoke-virtual {v1}, Lcom/inca/security/ke;->interrupt()V

    .line 482
    :try_start_2
    iget-object v1, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    invoke-virtual {v1}, Lcom/inca/security/ke;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, p0

    .line 364
    .end local p0    # "this":Lcom/inca/security/mg;
    .local v0, "this":Lcom/inca/security/mg;
    :goto_2
    new-instance v1, Lcom/inca/security/ke;

    invoke-direct {v1, p0}, Lcom/inca/security/ke;-><init>(Lcom/inca/security/mg;)V

    iput-object v1, v0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    .line 208
    iget-object v1, p0, Lcom/inca/security/mg;->iiiIiiiiII:Lcom/inca/security/ke;

    invoke-virtual {v1}, Lcom/inca/security/ke;->start()V

    .line 449
    return-void

    .line 295
    .end local v0    # "this":Lcom/inca/security/mg;
    .restart local p0    # "this":Lcom/inca/security/mg;
    :catch_0
    move-exception v1

    .line 348
    :try_start_3
    const-string v1, "#{1\u001eA"

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0

    .line 313
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 375
    :catch_2
    move-exception v3

    move-object v3, v2

    .line 243
    goto :goto_1

    .line 209
    :catch_3
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    move-object v0, p0

    .line 364
    .end local p0    # "this":Lcom/inca/security/mg;
    .restart local v0    # "this":Lcom/inca/security/mg;
    goto :goto_2

    .line 307
    nop

    :array_0
    .array-data 1
        0x76t
        -0x3et
        -0x23t
        0x19t
        0xct
        -0x2at
        0x4bt
        0x34t
        -0x6dt
        -0x18t
        -0x53t
        0x13t
        0x1et
        -0x62t
        -0x1t
        -0x79t
    .end array-data
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/inca/security/mg;->iiIIIiiiiI:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v1}, Lcom/inca/security/Core/AppGuardEngine;->IiIiiIiiII()V

    .line 433
    iput v0, p0, Lcom/inca/security/mg;->IiIiIIIiIi:I

    .line 329
    :cond_0
    return-void
.end method

.method public setCallbackHandler(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Handler;
    .param p2, "arg1"    # Landroid/os/Handler;
    .param p3, "arg2"    # Landroid/os/Handler;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 427
    :cond_0
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/inca/security/mg;->IIiiIiIIii:I

    .line 257
    return-void
.end method

.method public setEventListener(Lcom/inca/security/AppGuard/AppGuardEventListener;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/AppGuard/AppGuardEventListener;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/AppGuard/AppGuardEventListener;)V

    .line 434
    return-void
.end method

.method public setReserved1(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(I)V

    .line 330
    :cond_0
    return-void
.end method

.method public setUniqueClientID(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1, p2}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Ljava/lang/String;I)V

    .line 430
    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/inca/security/bc;

    iget-object v1, p0, Lcom/inca/security/mg;->IIiIIIIiIi:Landroid/content/Context;

    iget-object v2, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    .line 367
    invoke-virtual {v2}, Lcom/inca/security/Core/AppGuardEngine;->IiIIIIIIIi()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/inca/security/bc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Lcom/inca/security/bc;->start()V

    .line 350
    :cond_0
    return-void
.end method

.method public traceTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/inca/security/mg;->IiIIIiIIIi:Lcom/inca/security/Core/AppGuardEngine;

    invoke-virtual {v0, p1}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Landroid/view/MotionEvent;)V

    .line 455
    :cond_0
    return-void
.end method
