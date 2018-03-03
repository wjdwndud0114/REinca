.class Lcom/tnkfactory/ad/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/j;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/l;->a:Lcom/tnkfactory/ad/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/l;->a:Lcom/tnkfactory/ad/j;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/j;->removeFromParent()V

    return-void
.end method
