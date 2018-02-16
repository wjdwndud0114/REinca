.class final Lcom/tapjoy/TJCloseButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCloseButton;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCloseButton;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCloseButton;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/TJCloseButton$1;->a:Lcom/tapjoy/TJCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tapjoy/TJCloseButton$1;->a:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0}, Lcom/tapjoy/TJCloseButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJCloseButton$1$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCloseButton$1$1;-><init>(Lcom/tapjoy/TJCloseButton$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 109
    return-void
.end method
