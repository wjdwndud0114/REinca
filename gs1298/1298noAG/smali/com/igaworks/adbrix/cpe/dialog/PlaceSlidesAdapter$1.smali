.class Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "PlaceSlidesAdapter.java"


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

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    iput-object p6, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    sget-object v0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->pdLayout:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->pdLayout:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    invoke-virtual {v0, p1}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->addUsingBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    return-void
.end method
