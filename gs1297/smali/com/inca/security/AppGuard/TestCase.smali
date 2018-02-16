.class public Lcom/inca/security/AppGuard/TestCase;
.super Ljava/lang/Object;
.source "ac"


# static fields
.field private static synthetic IIIIiiIiII:Lcom/inca/security/AppGuard/TestCase; = null

.field private static final synthetic IiIiIiiIii:Ljava/lang/String; = "Modifier"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/inca/security/AppGuard/TestCase;->IIIIiiIiII:Lcom/inca/security/AppGuard/TestCase;

    .line 19
    :try_start_0
    const-string v0, "G>A("

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native synthetic IIIIIIlIll(Landroid/content/Context;Z)Z
.end method

.method private native synthetic IIIIIIllII(Landroid/content/Context;Z)Z
.end method

.method private native synthetic IIIIIIllIl(Landroid/content/Context;Z)Z
.end method

.method private native synthetic IIIIIIlllI(Landroid/content/Context;)Z
.end method

.method public static getInstance()Lcom/inca/security/AppGuard/TestCase;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/inca/security/AppGuard/TestCase;->IIIIiiIiII:Lcom/inca/security/AppGuard/TestCase;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/inca/security/AppGuard/TestCase;

    invoke-direct {v0}, Lcom/inca/security/AppGuard/TestCase;-><init>()V

    sput-object v0, Lcom/inca/security/AppGuard/TestCase;->IIIIiiIiII:Lcom/inca/security/AppGuard/TestCase;

    .line 117
    :cond_0
    sget-object v0, Lcom/inca/security/AppGuard/TestCase;->IIIIiiIiII:Lcom/inca/security/AppGuard/TestCase;

    return-object v0
.end method


# virtual methods
.method public testCrashHandlingLogic(Landroid/content/Context;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/inca/security/AppGuard/TestCase;->IIIIIIlllI(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public testEngineIntegrityLogic(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/inca/security/AppGuard/TestCase;->IIIIIIllIl(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public testOdexIntegrityLogic(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/inca/security/AppGuard/TestCase;->IIIIIIlIll(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public testStubIntegrityLogic(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/inca/security/AppGuard/TestCase;->IIIIIIllII(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method
