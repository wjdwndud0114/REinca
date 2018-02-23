.class Lcom/tnkfactory/ad/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/cn;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/co;->a:Lcom/tnkfactory/ad/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/co;->a:Lcom/tnkfactory/ad/cn;

    iget-object v0, v0, Lcom/tnkfactory/ad/cn;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->finish()V

    return-void
.end method
