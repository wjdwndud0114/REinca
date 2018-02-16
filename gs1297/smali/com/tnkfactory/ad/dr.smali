.class Lcom/tnkfactory/ad/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdWallActivity;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdWallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/dr;->a:Lcom/tnkfactory/ad/AdWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/dr;->a:Lcom/tnkfactory/ad/AdWallActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdWallActivity;->finish()V

    return-void
.end method
