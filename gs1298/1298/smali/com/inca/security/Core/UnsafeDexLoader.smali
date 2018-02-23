.class public Lcom/inca/security/Core/UnsafeDexLoader;
.super Ljava/lang/Object;
.source "gb"


# static fields
.field private static final synthetic IIIIiiIiII:Ljava/lang/String; = "UnsafeDexLoader"


# instance fields
.field private synthetic IiIiIiiIii:Landroid/content/Context;

.field private synthetic IiiIiiiIiI:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    :try_start_0
    const-string v0, "@\u0004F\u0012" #stub

    invoke-static {v0}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    .line 120
    iput-object p1, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiIiIiiIii:Landroid/content/Context;

    .line 180
    return-void
.end method

.method private native synthetic IIIIIIIIIl([B)I
.end method

.method private native synthetic IIIIIIIIlI(Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Class;
.end method

.method private native synthetic IIIIIIIIll(I)[Ljava/lang/String;
.end method

.method private native synthetic IIIIIIIlII(I)V
.end method

.method private native synthetic IlIIIIIIII(Ljava/lang/String;Ljava/lang/String;I)I
.end method


# virtual methods
.method public synthetic IiiiIIIIii(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget v1, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    invoke-direct {p0, p1, v0, v1}, Lcom/inca/security/Core/UnsafeDexLoader;->IIIIIIIIlI(Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public synthetic IiiiIIIIii()V
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    invoke-direct {p0, v0}, Lcom/inca/security/Core/UnsafeDexLoader;->IIIIIIIlII(I)V

    .line 130
    return-void
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/inca/security/Core/UnsafeDexLoader;->IlIIIIIIII(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    .line 176
    iget v1, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public synthetic IiiiIIIIii([B)Z
    .locals 1
    .param p1, "arg0"    # [B

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/inca/security/Core/UnsafeDexLoader;->IIIIIIIIIl([B)I

    move-result v0

    iput v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    .line 179
    iget v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/inca/security/Core/UnsafeDexLoader;->IiiIiiiIiI:I

    invoke-direct {p0, v0}, Lcom/inca/security/Core/UnsafeDexLoader;->IIIIIIIIll(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
