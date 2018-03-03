.class Lcom/tnkfactory/ad/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdListView;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/bn;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/bn;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0, p1}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
