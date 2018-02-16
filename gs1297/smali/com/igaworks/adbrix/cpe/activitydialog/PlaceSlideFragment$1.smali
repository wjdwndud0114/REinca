.class Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$1;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "PlaceSlideFragment.java"


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
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$1;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    iput-object p6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$1;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    :try_start_0
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    invoke-virtual {v1, p1}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->addUsingBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
