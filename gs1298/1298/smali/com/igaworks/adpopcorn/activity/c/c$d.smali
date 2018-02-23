.class Lcom/igaworks/adpopcorn/activity/c/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/activity/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/c/c;


# direct methods
.method private constructor <init>(Lcom/igaworks/adpopcorn/activity/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/adpopcorn/activity/c/c;Lcom/igaworks/adpopcorn/activity/c/c$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/activity/c/c$d;-><init>(Lcom/igaworks/adpopcorn/activity/c/c;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->a(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/c/c;->b(Lcom/igaworks/adpopcorn/activity/c/c;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->a(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->c(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/c/c;->b(Lcom/igaworks/adpopcorn/activity/c/c;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/c/c$d;->a:Lcom/igaworks/adpopcorn/activity/c/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/c/c;->c(Lcom/igaworks/adpopcorn/activity/c/c;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
