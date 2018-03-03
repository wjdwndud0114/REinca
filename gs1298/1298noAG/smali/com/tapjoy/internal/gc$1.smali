.class final Lcom/tapjoy/internal/gc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gc;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 672
    new-instance v0, Lcom/tapjoy/internal/fd;

    invoke-direct {v0}, Lcom/tapjoy/internal/fd;-><init>()V

    .line 673
    iget-object v1, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v1}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fd;->a(Landroid/content/Context;)Z

    move-result v1

    .line 675
    iget-object v2, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    monitor-enter v2

    .line 676
    if-eqz v1, :cond_1

    .line 1090
    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/fd;->a:Ljava/lang/String;

    .line 677
    invoke-static {v1}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    iget-boolean v0, v0, Lcom/tapjoy/internal/fd;->b:Z

    .line 679
    iget-object v3, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/gj;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v3}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v3

    .line 681
    iget-object v4, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v4}, Lcom/tapjoy/internal/gc;->c(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/ek$a;

    move-result-object v4

    iput-object v1, v4, Lcom/tapjoy/internal/ek$a;->q:Ljava/lang/String;

    .line 682
    iget-object v4, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v4}, Lcom/tapjoy/internal/gc;->c(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/ek$a;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/tapjoy/internal/ek$a;->r:Ljava/lang/Boolean;

    .line 684
    iget-object v4, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v4}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/gj;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v4}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/gj;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 687
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;Z)V

    .line 689
    invoke-static {v3}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v0}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gj;->a(Z)V

    .line 702
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v0}, Lcom/tapjoy/internal/gc;->c(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/ek$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->q:Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v0}, Lcom/tapjoy/internal/gc;->c(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/ek$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->r:Ljava/lang/Boolean;

    .line 697
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v0}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->A:Lcom/tapjoy/internal/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/tapjoy/internal/gc$1;->a:Lcom/tapjoy/internal/gc;

    invoke-static {v0}, Lcom/tapjoy/internal/gc;->b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->B:Lcom/tapjoy/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 700
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gn;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
