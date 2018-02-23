.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$4"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 379
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2$1;->this$4:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;->this$3:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
