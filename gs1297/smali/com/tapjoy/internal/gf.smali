.class public final Lcom/tapjoy/internal/gf;
.super Lcom/tapjoy/internal/gg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/gf;->h:J

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
