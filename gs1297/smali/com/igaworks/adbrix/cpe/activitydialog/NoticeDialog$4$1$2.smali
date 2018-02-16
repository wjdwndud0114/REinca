.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 335
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v8, v8, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v8, v8, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v6, v7}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$802(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 336
    const/high16 v6, 0x41a00000    # 20.0f

    iget-object v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-static {v7}, Lcom/igaworks/core/DisplaySetter;->getNormalizeFactor(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 337
    .local v3, "size":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x35

    invoke-direct {v1, v3, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 338
    .local v1, "closeBtnParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 339
    .local v0, "closeBtnMargin":[I
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLocationInWindow([I)V

    .line 341
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 343
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "IGAW_QA"

    const-string v8, "screen width/height : %d/%d, imageView width/height : %d/%d, imageViewPoistion : %d/%d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .line 344
    invoke-virtual {v11}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v11}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .line 345
    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v11}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v11, v11, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v11}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v0, v11

    .line 346
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x1

    aget v11, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 343
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v6, v7, v8, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 349
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v7}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 350
    .local v5, "width":I
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v4, v6, 0x2

    .line 351
    .local v4, "space":I
    const/4 v6, 0x0

    aget v6, v0, v6

    sub-int v6, v4, v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 357
    :goto_0
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$1;

    invoke-direct {v7, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    sget-object v6, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;

    invoke-direct {v7, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2$2;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 392
    return-void

    .line 353
    .end local v4    # "space":I
    .end local v5    # "width":I
    :cond_0
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v7, v7, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v7}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 354
    .restart local v5    # "width":I
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1$2;->this$2:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4$1;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v4, v6, 0x2

    .line 355
    .restart local v4    # "space":I
    const/4 v6, 0x1

    aget v6, v0, v6

    sub-int v6, v4, v6

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
