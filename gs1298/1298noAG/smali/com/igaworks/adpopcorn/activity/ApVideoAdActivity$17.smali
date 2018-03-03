.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->k(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ApVideoAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onError : what : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->c(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->o(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->p(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aw:Ljava/lang/String;

    const/16 v0, -0x3ec

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ay:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, -0x3ef

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aw:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v0, -0x3f2

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->az:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, -0x6e

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$17;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->q(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iget-object v0, v0, Lcom/igaworks/adpopcorn/cores/common/f;->aw:Ljava/lang/String;

    goto :goto_0
.end method
