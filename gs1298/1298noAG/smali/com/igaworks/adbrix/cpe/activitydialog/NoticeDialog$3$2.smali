.class Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->onResultCustom(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v3, v3, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$802(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 242
    const/high16 v1, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-static {v2}, Lcom/igaworks/core/DisplaySetter;->getNormalizeFactor(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 243
    .local v11, "size":I
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    invoke-direct {v9, v11, v11, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 244
    .local v9, "closeBtnParam":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 245
    .local v8, "closeBtnMargin":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getLocationInWindow([I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 249
    .local v10, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    const-string v3, "screen width/height : %d/%d, imageView width/height : %d/%d, imageViewPoistion : %d/%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .line 250
    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .line 251
    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v6, v6, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aget v6, v8, v6

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 249
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    iget v1, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 256
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v12, v1, 0x2

    .line 257
    .local v12, "space":I
    const/4 v1, 0x0

    aget v1, v8, v1

    sub-int v1, v12, v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 263
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v7

    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v17

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;

    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    .line 273
    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v2

    const-string v5, "imagecache"

    invoke-virtual {v2, v5}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .line 274
    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2$2;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v1

    .line 272
    invoke-virtual/range {v2 .. v7}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 287
    return-void

    .line 259
    .end local v12    # "space":I
    .end local v13    # "width":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 260
    .restart local v13    # "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3$2;->this$1:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->getActualHeight()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v12, v1, 0x2

    .line 261
    .restart local v12    # "space":I
    const/4 v1, 0x1

    aget v1, v8, v1

    sub-int v1, v12, v1

    div-int/lit8 v2, v11, 0x2

    add-int/2addr v1, v2

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method
