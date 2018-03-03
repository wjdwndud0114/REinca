.class final Lcom/tapjoy/TJCloseButton$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCloseButton$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCloseButton$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCloseButton$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tapjoy/TJCloseButton$1$1;->a:Lcom/tapjoy/TJCloseButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tapjoy/TJCloseButton$1$1;->a:Lcom/tapjoy/TJCloseButton$1;

    iget-object v0, v0, Lcom/tapjoy/TJCloseButton$1;->a:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    .line 94
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tapjoy/TJCloseButton$1$1;->a:Lcom/tapjoy/TJCloseButton$1;

    iget-object v0, v0, Lcom/tapjoy/TJCloseButton$1;->a:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    .line 107
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 98
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 102
    return-void
.end method
