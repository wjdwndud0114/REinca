.class Lcom/tnkfactory/ad/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/et;->c:Lcom/tnkfactory/ad/ei;

    iput-object p2, p0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tnkfactory/ad/et;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/eu;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/eu;-><init>(Lcom/tnkfactory/ad/et;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/et;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/et;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
