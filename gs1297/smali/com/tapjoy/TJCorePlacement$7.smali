.class final Lcom/tapjoy/TJCorePlacement$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 491
    if-nez p3, :cond_0

    .line 492
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 499
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 502
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    const-string v1, "placement_data"

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 504
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 506
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$7;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    goto :goto_0
.end method
