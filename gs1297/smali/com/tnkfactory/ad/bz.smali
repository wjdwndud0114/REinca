.class Lcom/tnkfactory/ad/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdListView;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/bz;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/bz;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    sput v0, Lcom/tnkfactory/ad/u;->c:I

    iget-object v0, p0, Lcom/tnkfactory/ad/bz;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    sput v0, Lcom/tnkfactory/ad/u;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/bz;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/bz;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->a(Lcom/tnkfactory/ad/AdListView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
