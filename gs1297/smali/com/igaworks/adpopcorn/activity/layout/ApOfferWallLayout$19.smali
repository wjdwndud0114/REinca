.class Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    iput-boolean p2, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->A(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout$19;->a:Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;->B(Lcom/igaworks/adpopcorn/activity/layout/ApOfferWallLayout;)V

    :cond_0
    return-void
.end method
