.class Lcom/tnkfactory/ad/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ah;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/an;->a:Lcom/tnkfactory/ad/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/an;->a:Lcom/tnkfactory/ad/ah;

    invoke-static {v0}, Lcom/tnkfactory/ad/ah;->e(Lcom/tnkfactory/ad/ah;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
