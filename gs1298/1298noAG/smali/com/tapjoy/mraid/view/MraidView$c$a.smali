.class final Lcom/tapjoy/mraid/view/MraidView$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mraid/view/MraidView$c;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView$c;)V
    .locals 1

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->b:Z

    .line 1076
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1081
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1083
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1085
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->b:Z

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v1, v1, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->b:Z

    .line 1087
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "videoplay"

    .line 1088
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$c$a;->a:Lcom/tapjoy/mraid/view/MraidView$c;

    iget-object v1, v1, Lcom/tapjoy/mraid/view/MraidView$c;->a:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')}catch(e){}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1087
    :cond_1
    const-string v0, "videopause"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1093
    :cond_2
    return-void
.end method
