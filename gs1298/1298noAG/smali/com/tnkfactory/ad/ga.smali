.class Lcom/tnkfactory/ad/ga;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/fy;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fy;

    const/4 v1, 0x2

    iput v1, v0, Lcom/tnkfactory/ad/fy;->e:I

    iget-object v0, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->removeFromParent(Z)V

    return-void
.end method
