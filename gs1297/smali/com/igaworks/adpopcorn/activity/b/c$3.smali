.class Lcom/igaworks/adpopcorn/activity/b/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/c;->onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
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

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/c$3;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$3;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$3;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->u(Lcom/igaworks/adpopcorn/activity/b/c;)Lcom/igaworks/adpopcorn/activity/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/d$a;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/c$3;->a:Lcom/igaworks/adpopcorn/activity/b/c;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/c;->dismiss()V

    return-void
.end method
