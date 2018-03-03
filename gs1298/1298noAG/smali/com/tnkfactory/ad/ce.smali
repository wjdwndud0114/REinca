.class Lcom/tnkfactory/ad/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdListView;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/ce;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/ce;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ce;->b:Landroid/content/Context;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ce;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ce;->a:Lcom/tnkfactory/ad/AdListView;

    iget-object v1, p0, Lcom/tnkfactory/ad/ce;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdListView;->f(Lcom/tnkfactory/ad/AdListView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/AdListView;->loadAdList(Landroid/app/Activity;)V

    return-void
.end method
