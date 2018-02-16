.class final Lcom/tapjoy/internal/ez$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ez;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ez;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tapjoy/internal/ez$1;->a:Lcom/tapjoy/internal/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tapjoy/internal/ez$1;->a:Lcom/tapjoy/internal/ez;

    iget-object v0, v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    const-string v1, "usage_tracking_enabled"

    .line 1138
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    invoke-static {v0}, Lcom/tapjoy/internal/ff;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/tapjoy/internal/ez$1;->a:Lcom/tapjoy/internal/ez;

    iget-object v0, v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    const-string v1, "usage_tracking_exclude"

    const-class v2, Ljava/util/List;

    .line 2124
    iget-object v0, v0, Lcom/tapjoy/internal/fj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/fj$a;

    .line 2125
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fj$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2126
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2127
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 105
    invoke-static {v0}, Lcom/tapjoy/internal/ff;->a(Ljava/util/Collection;)V

    .line 107
    return-void

    .line 2130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
