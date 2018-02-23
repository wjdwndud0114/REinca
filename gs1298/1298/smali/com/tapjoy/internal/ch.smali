.class public final Lcom/tapjoy/internal/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tapjoy/internal/cf;

.field private final b:Lcom/tapjoy/internal/ck;


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/cf;Lcom/tapjoy/internal/ck;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/ch;->a:Lcom/tapjoy/internal/cf;

    .line 23
    iput-object p2, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ch;->a:Lcom/tapjoy/internal/cf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cf;->f()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    instance-of v1, v1, Lcom/tapjoy/internal/cl;

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    iget-object v2, p0, Lcom/tapjoy/internal/ch;->a:Lcom/tapjoy/internal/cf;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/ck;->a(Lcom/tapjoy/internal/cf;Ljava/lang/Object;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    instance-of v0, v0, Lcom/tapjoy/internal/cl;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/ch;->b:Lcom/tapjoy/internal/ck;

    iget-object v1, p0, Lcom/tapjoy/internal/ch;->a:Lcom/tapjoy/internal/cf;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ck;->a(Lcom/tapjoy/internal/cf;)V

    goto :goto_0
.end method
