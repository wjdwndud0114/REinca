.class public final Lcom/tapjoy/internal/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/tapjoy/internal/hv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/hv;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lcom/tapjoy/internal/ib;)Lcom/tapjoy/internal/hs;
    .locals 2

    .prologue
    .line 60
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/hw;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hw;-><init>(Lcom/tapjoy/internal/ib;)V

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/ic;)Lcom/tapjoy/internal/ht;
    .locals 2

    .prologue
    .line 50
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/hx;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hx;-><init>(Lcom/tapjoy/internal/ic;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/ib;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/tapjoy/internal/id;

    invoke-direct {v0}, Lcom/tapjoy/internal/id;-><init>()V

    .line 1070
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/hv$1;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/hv$1;-><init>(Lcom/tapjoy/internal/id;Ljava/io/OutputStream;)V

    .line 66
    return-object v1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/ic;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/tapjoy/internal/id;

    invoke-direct {v0}, Lcom/tapjoy/internal/id;-><init>()V

    .line 1129
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/hv$2;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/hv$2;-><init>(Lcom/tapjoy/internal/id;Ljava/io/InputStream;)V

    .line 125
    return-object v1
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
