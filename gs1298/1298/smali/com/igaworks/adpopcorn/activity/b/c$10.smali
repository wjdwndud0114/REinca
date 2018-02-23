.class Lcom/igaworks/adpopcorn/activity/b/c$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c;->e()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/c;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$10;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$10;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->p(Lcom/igaworks/adpopcorn/activity/b/c;)I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/activity/b/c$10;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/activity/b/c;->q(Lcom/igaworks/adpopcorn/activity/b/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$10;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->r(Lcom/igaworks/adpopcorn/activity/b/c;)V

    :cond_0
    return-void
.end method
