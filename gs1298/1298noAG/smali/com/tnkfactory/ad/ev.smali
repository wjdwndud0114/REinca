.class Lcom/tnkfactory/ad/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ez;

.field final synthetic b:Lcom/tnkfactory/ad/ei;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ei;Lcom/tnkfactory/ad/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ev;->b:Lcom/tnkfactory/ad/ei;

    iput-object p2, p0, Lcom/tnkfactory/ad/ev;->a:Lcom/tnkfactory/ad/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ev;->a:Lcom/tnkfactory/ad/ez;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ev;->a:Lcom/tnkfactory/ad/ez;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ez;->performClick()Z

    :cond_0
    return-void
.end method
