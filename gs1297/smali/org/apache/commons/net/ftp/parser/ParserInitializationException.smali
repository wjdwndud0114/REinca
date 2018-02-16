.class public Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
.super Ljava/lang/RuntimeException;
.source "ParserInitializationException.java"


# static fields
.field private static final serialVersionUID:J = 0x4d34eff601f4aca2L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getRootCause()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
