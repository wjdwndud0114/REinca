.class Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;
.super Ljava/lang/Object;
.source "PlaceSlideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->imageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->access$000(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method
