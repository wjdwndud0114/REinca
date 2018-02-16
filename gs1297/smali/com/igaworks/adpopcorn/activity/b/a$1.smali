.class Lcom/igaworks/adpopcorn/activity/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/a;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/a;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/a$1;->a:Lcom/igaworks/adpopcorn/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/a$1;->a:Lcom/igaworks/adpopcorn/activity/b/a;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/a;->dismiss()V

    return-void
.end method
