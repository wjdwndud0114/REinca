.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "NoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    return-void
.end method
