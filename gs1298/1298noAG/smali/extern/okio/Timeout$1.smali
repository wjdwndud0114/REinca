.class final Lextern/okio/Timeout$1;
.super Lextern/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lextern/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lextern/okio/Timeout;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    .prologue
    .line 54
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lextern/okio/Timeout;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 50
    return-object p0
.end method
