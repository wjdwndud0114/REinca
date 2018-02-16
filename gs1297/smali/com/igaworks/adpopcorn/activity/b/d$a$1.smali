.class Lcom/igaworks/adpopcorn/activity/b/d$a$1;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/d$a;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/d$a;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/d$a$1;->a:Lcom/igaworks/adpopcorn/activity/b/d$a;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->a(Lcom/igaworks/adpopcorn/activity/b/d$a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
