.class final Lcom/tapjoy/mraid/view/MraidView$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/mraid/view/MraidView$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView$c;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView$c;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$c$1;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$1;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$1;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1064
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$c$a;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView$c$1;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    invoke-direct {v1, v2}, Lcom/tapjoy/mraid/view/MraidView$c$a;-><init>(Lcom/tapjoy/mraid/view/MraidView$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1065
    return-void
.end method
