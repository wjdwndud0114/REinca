.class Lcom/tnkfactory/ad/gz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/gx;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gz;->a:Lcom/tnkfactory/ad/gx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gz;->a:Lcom/tnkfactory/ad/gx;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tnkfactory/ad/gx;->e:I

    iget-object v0, p0, Lcom/tnkfactory/ad/gz;->a:Lcom/tnkfactory/ad/gx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gx;->removeFromParent(Z)V

    return-void
.end method
