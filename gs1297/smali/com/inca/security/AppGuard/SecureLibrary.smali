.class public Lcom/inca/security/AppGuard/SecureLibrary;
.super Ljava/lang/Object;
.source "hb" #hb


# static fields
.field private static synthetic IiIiIiiIii:Lcom/inca/security/oc;


# instance fields
.field private synthetic IIIIiiIiII:Lcom/inca/security/Interface/BaseEventInvoker;

.field private synthetic IiiIiiiIiI:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/inca/security/AppGuard/SecureLibrary;->IiIiIiiIii:Lcom/inca/security/oc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/Interface/BaseEventInvoker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IIIIiiIiII:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 87
    iput-boolean v0, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IiiIiiiIiI:Z

    .line 182
    iget-boolean v0, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IiiIiiiIiI:Z

    if-nez v0, :cond_0

    .line 56
    const-string v0, "8&\u00086\u0019&\'*\t1\n1\u0012" #SecureLibrary

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n.\t+\u0016)\r$\n6\u0010/\u0011$\u00154\u0018?\u001c)y\u0012*[7\u0014-[-\t,\u001ew" #SUPPORT_SMITH_LOADER is not true.

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    sget-object v0, Lcom/inca/security/AppGuard/SecureLibrary;->IiIiIiiIii:Lcom/inca/security/oc;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/inca/security/oc;

    const-string v1, "/\u0002!\n.\u001bm\u0018,\u0013" #libamp.sox

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/inca/security/oc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/inca/security/AppGuard/SecureLibrary;->IiIiIiiIii:Lcom/inca/security/oc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    iput-object p2, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IIIIiiIiII:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 97
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "<\u0003:\u001e)\u000f0\u00147" #exception

    invoke-static {v2}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inca/security/Exception/AppGuardException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u0016\u00193\u001e:\u000f\u001f\u001a:\u000f6\t " #ObjectFactory

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IiiIiiiIiI:Z

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Lcom/inca/security/ob;

    invoke-direct {v0}, Lcom/inca/security/ob;-><init>()V

    .line 176
    :goto_0
    return-object v0

    .line 166
    :cond_1
    sget-object v0, Lcom/inca/security/AppGuard/SecureLibrary;->IiIiIiiIii:Lcom/inca/security/oc;

    const-string v1, "\u0008,\u0006m\u0002-\u0008\"E0\u000e \u001e1\u00027\u0012m\'*\t1\n1\u0012m$!\u0001&\u00087-\"\u00087\u00041\u0012" #com.inca.security.Library.ObjectFactory

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inca/security/oc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "4;\u0011<\u0018-27\u000f<\u001c+\u0012-\u0002\u0014\u001a7\u001a>\u001e+" #ObjectIntegrityManager

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IiiIiiiIiI:Z

    if-eqz v0, :cond_4

    .line 61
    :cond_3
    invoke-static {}, Lcom/inca/security/zb;->IiiiIIIIii()Lcom/inca/security/zb;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IIIIiiIiII:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v0, v1}, Lcom/inca/security/Interface/ObjectIntegrityManager;->registerListener(Lcom/inca/security/Interface/BaseEventInvoker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    new-instance v1, Lcom/inca/security/Exception/AppGuardException;

    const-string v2, "<\u0003:\u001e)\u000f0\u00147" #exception

    invoke-static {v2}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/inca/security/Exception/AppGuardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :cond_4
    :try_start_1
    sget-object v0, Lcom/inca/security/AppGuard/SecureLibrary;->IiIiIiiIii:Lcom/inca/security/oc;

    const-string v1, " \u0004.E*\u0005 \nm\u0018&\u00086\u0019*\u001f:E\u000f\u0002!\u0019\"\u0019:E\u000c\t)\u000e \u001f\n\u00057\u000e$\u0019*\u001f:&\"\u0005\"\u000c&\u0019" #com.inca.security.Library.ObjectIntegrityManager

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inca/security/oc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/ObjectIntegrityManager;

    .line 205
    iget-object v1, p0, Lcom/inca/security/AppGuard/SecureLibrary;->IIIIiiIiII:Lcom/inca/security/Interface/BaseEventInvoker;

    invoke-interface {v0, v1}, Lcom/inca/security/Interface/ObjectIntegrityManager;->registerListener(Lcom/inca/security/Interface/BaseEventInvoker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
