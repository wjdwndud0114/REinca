.class Lcom/tnkfactory/ad/ep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ez;

.field final synthetic b:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ep;->b:Lcom/tnkfactory/ad/ei;

    iput-object p2, p0, Lcom/tnkfactory/ad/ep;->a:Lcom/tnkfactory/ad/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ep;->a:Lcom/tnkfactory/ad/ez;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ez;->clearAnimation()V

    iget-object v0, p0, Lcom/tnkfactory/ad/ep;->b:Lcom/tnkfactory/ad/ei;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ei;->b(Lcom/tnkfactory/ad/ei;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
