.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;
.super Lcom/igaworks/util/image/ImageDownloadAsyncCallback;
.source "NoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutImageView(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/widget/ImageView;
    .param p4, "x2"    # Lcom/igaworks/util/image/ImageCache;
    .param p5, "x3"    # Landroid/widget/FrameLayout;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/igaworks/util/image/ImageDownloadAsyncCallback;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public onResultCustom(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    :cond_0
    if-nez p1, :cond_2

    .line 214
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->conversionKey:I
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$400(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->finish()V

    .line 289
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$700(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
