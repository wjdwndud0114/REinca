.class Lcom/tnkfactory/ad/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ds;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/dv;->a:Lcom/tnkfactory/ad/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/dv;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->e()V

    return-void
.end method
