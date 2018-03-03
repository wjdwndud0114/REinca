.class Lcom/tnkfactory/ad/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/et;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/et;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/eu;->a:Lcom/tnkfactory/ad/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/eu;->a:Lcom/tnkfactory/ad/et;

    iget-object v0, v0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/tnkfactory/ad/eu;->a:Lcom/tnkfactory/ad/et;

    iget-object v0, v0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

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
