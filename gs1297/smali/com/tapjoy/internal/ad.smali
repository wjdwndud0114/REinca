.class public final Lcom/tapjoy/internal/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/bg;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/tapjoy/internal/bg;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 33
    throw v1

    .line 1055
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
