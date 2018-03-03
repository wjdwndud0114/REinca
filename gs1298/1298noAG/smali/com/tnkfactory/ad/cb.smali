.class Lcom/tnkfactory/ad/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/AdListView;

.field private b:Landroid/content/Context;

.field private c:J


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/AdListView;)V
    .locals 2

    iput-object p1, p0, Lcom/tnkfactory/ad/cb;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/cb;->b:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/cb;->c:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cb;->b:Landroid/content/Context;

    iput-wide p2, p0, Lcom/tnkfactory/ad/cb;->c:J

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/cb;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tnkfactory/ad/cb;->c:J

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/ia;->d(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/cb;->a:Lcom/tnkfactory/ad/AdListView;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdListView;->e(Lcom/tnkfactory/ad/AdListView;)Lcom/tnkfactory/ad/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ae;->c()V

    return-void
.end method
