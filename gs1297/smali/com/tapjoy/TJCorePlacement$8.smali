.class final Lcom/tapjoy/TJCorePlacement$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$8;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$8;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->m(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/gg;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v1

    .line 1904
    iget-object v1, v1, Lcom/tapjoy/internal/fz;->p:Lcom/tapjoy/internal/ga;

    .line 514
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$8;->a:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, v2, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/ev;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/gg;->a(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    .line 515
    return-void
.end method
