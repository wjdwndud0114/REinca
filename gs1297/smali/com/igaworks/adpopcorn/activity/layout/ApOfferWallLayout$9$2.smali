.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9$2;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;->a(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$9;)Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    move-result-object v0

    const-string v1, "http://adpopcorn.com"

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->c(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Ljava/lang/String;)V

    return-void
.end method
