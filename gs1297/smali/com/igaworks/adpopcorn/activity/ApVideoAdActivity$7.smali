.class Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->a(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->showProgressDialog(Z)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity$7;->a:Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;->m(Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;)V

    return-void
.end method
