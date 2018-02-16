.class Lcom/tnkfactory/ad/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/gs;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/gu;->a:Lcom/tnkfactory/ad/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/gu;->a:Lcom/tnkfactory/ad/gs;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tnkfactory/ad/gs;->e:I

    iget-object v0, p0, Lcom/tnkfactory/ad/gu;->a:Lcom/tnkfactory/ad/gs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/gs;->removeFromParent(Z)V

    return-void
.end method
