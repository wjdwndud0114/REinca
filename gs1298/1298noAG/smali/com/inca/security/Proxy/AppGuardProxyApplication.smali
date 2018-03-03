.class public Lcom/inca/security/Proxy/AppGuardProxyApplication;
.super Landroid/app/Application;
.source "ub"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Lcom/inca/security/DexProtect/Binder;->getABI()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "|\u0005r\u001a~\u001ev\u0008s\u000f"

    invoke-static {v0}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/inca/security/Proxy/JNISoxProxy;->setContext(Landroid/content/Context;)V

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    return-void
.end method
