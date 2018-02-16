.class final Lcom/tapjoy/internal/fa$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fa$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tapjoy/internal/fa$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fa$b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tapjoy/internal/fa$b$1;->b:Lcom/tapjoy/internal/fa$b;

    iput-object p2, p0, Lcom/tapjoy/internal/fa$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 305
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/fa$b$1;->b:Lcom/tapjoy/internal/fa$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fa$b;->a(Lcom/tapjoy/internal/fa$b;Z)Z

    .line 307
    iget-object v0, p0, Lcom/tapjoy/internal/fa$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 308
    return-void
.end method
