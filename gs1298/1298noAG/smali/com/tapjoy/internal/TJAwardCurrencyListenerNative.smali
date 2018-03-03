.class public Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAwardCurrencyListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeHandle"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-wide p1, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    .line 14
    return-void
.end method

.method static create(J)Ljava/lang/Object;
    .locals 2
    .param p0, "nativeHandle"    # J
    .annotation build Lcom/tapjoy/internal/eu;
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onAwardCurrencyResponseFailureNative(JLjava/lang/String;)V
.end method

.method private static native onAwardCurrencyResponseNative(JLjava/lang/String;I)V
.end method


# virtual methods
.method public onAwardCurrencyResponse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "balance"    # I

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->onAwardCurrencyResponseNative(JLjava/lang/String;I)V

    .line 19
    return-void
.end method

.method public onAwardCurrencyResponseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJAwardCurrencyListenerNative;->onAwardCurrencyResponseFailureNative(JLjava/lang/String;)V

    .line 24
    return-void
.end method
