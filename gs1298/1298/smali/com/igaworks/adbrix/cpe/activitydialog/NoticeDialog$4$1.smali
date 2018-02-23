.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->conversionKey:I
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$400(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->finish()V

    .line 395
    :goto_0
    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$700(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
