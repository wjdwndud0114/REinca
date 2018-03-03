.class public final Lcom/tapjoy/internal/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/tapjoy/internal/ff$a;

.field public b:I

.field public volatile c:Lcom/tapjoy/internal/ff$a;

.field public volatile d:Lcom/tapjoy/internal/ff$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 75
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ev;->a(I)V

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/ev;->c:Lcom/tapjoy/internal/ff$a;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/ev;->c:Lcom/tapjoy/internal/ff$a;

    .line 80
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 82
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ev;->a:Lcom/tapjoy/internal/ff$a;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    iget v1, p0, Lcom/tapjoy/internal/ev;->b:I

    if-ge v1, p1, :cond_0

    .line 88
    iget v1, p0, Lcom/tapjoy/internal/ev;->b:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/tapjoy/internal/ev;->b:I

    .line 89
    const-string v1, "state"

    iget v2, p0, Lcom/tapjoy/internal/ev;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
