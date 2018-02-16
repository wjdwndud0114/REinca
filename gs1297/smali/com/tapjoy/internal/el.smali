.class public final Lcom/tapjoy/internal/el;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/el;


# instance fields
.field public final b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    new-instance v0, Lcom/tapjoy/internal/el;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/internal/el;-><init>(J)V

    sput-object v0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/el;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x36ee80

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v2, p0, Lcom/tapjoy/internal/el;->b:J

    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->c:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/tapjoy/internal/el;->b:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->b:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->b:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method
