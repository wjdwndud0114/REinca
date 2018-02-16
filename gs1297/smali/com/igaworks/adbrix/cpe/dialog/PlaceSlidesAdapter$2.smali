.class Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;
.super Ljava/lang/Object;
.source "PlaceSlidesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;ILandroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    iput p2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->imageUrlList:Ljava/util/List;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->access$000(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->access$100(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2$1;-><init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
