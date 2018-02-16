.class final Lcom/tapjoy/mraid/view/MraidView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1042
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    add-int/lit8 v0, v0, 0x32

    .line 1050
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->h(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$c$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$c$1;-><init>(Lcom/tapjoy/mraid/view/MraidView$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1067
    return-void

    .line 1053
    :catch_0
    move-exception v1

    goto :goto_0
.end method
