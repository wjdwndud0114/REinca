.class public Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
.super Landroid/app/Activity;
.source "NoticeDialog.java"


# static fields
.field public static final CLICK_ACTION_CLOSE:Ljava/lang/String; = "no"

.field public static final CLICK_ACTION_URL:Ljava/lang/String; = "url"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_WEB:Ljava/lang/String; = "web"


# instance fields
.field private clickAction:Ljava/lang/String;

.field private closeBtnIv:Landroid/widget/ImageView;

.field private conversionKey:I

.field private imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

.field private imageViewParent:Landroid/widget/FrameLayout;

.field private img:Landroid/graphics/Bitmap;

.field public landingClickActionListener:Landroid/view/View$OnClickListener;

.field private landing_url:Ljava/lang/String;

.field public noClickActionListener:Landroid/view/View$OnClickListener;

.field private parentParam:Landroid/widget/LinearLayout$LayoutParams;

.field private progressCircle:Landroid/widget/FrameLayout;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webViewParent:Landroid/widget/LinearLayout;

.field private webview:Landroid/webkit/WebView;

.field private webviewParam:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    new-instance v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$1;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$1;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->noClickActionListener:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$2;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landingClickActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
    .param p1, "x1"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webviewParam:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$200(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->conversionKey:I

    return v0
.end method

.method static synthetic access$500(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Lcom/igaworks/adbrix/util/SizeAwareImageView;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$800(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->closeBtnIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    return-object v0
.end method

.method private addProgressCircle(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 478
    :try_start_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    .line 479
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 480
    .local v2, "progressCirclePb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    .local v0, "pcParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v1, "pcpbParam":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 483
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 484
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 487
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "pcParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "pcpbParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "progressCirclePb":Landroid/widget/ProgressBar;
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 426
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 427
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 428
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 429
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 434
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveImageFile(Ljava/lang/String;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {p0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->computeHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 442
    .local v5, "mPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/adbrix/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, "mFile1":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 447
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 450
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    .local v4, "mFile2":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 472
    :goto_0
    return-void

    .line 459
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 461
    .local v6, "outStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 463
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 465
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 467
    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setLayoutImageView(Landroid/view/View$OnClickListener;)V
    .locals 11
    .param p1, "clickAction"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 187
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 192
    new-instance v0, Lcom/igaworks/adbrix/util/SizeAwareImageView;

    invoke-direct {v0, p0}, Lcom/igaworks/adbrix/util/SizeAwareImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

    .line 193
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0}, Lcom/igaworks/core/DisplaySetter;->getNormalizeFactor(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 194
    .local v7, "margin":I
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {v8, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 195
    .local v8, "webviewParam":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 197
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 198
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 199
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

    invoke-virtual {v0, v8}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageView:Lcom/igaworks/adbrix/util/SizeAwareImageView;

    invoke-virtual {v0, p1}, Lcom/igaworks/adbrix/util/SizeAwareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->imageViewParent:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->addProgressCircle(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 203
    invoke-static {p0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v6

    iget-object v9, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    const-string v4, "imagecache"

    invoke-virtual {v1, v4}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v4

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->progressCircle:Landroid/widget/FrameLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$3;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v1, v6

    move-object v2, v9

    move-object v4, v3

    move-object v5, v10

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 408
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog$4;-><init>(Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setLayoutWebView(Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "clickAction"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x14

    const/4 v4, -0x1

    .line 156
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 157
    .local v1, "roundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 159
    .local v0, "roundedCornerSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 161
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 162
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 164
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    .line 167
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webviewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webviewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 171
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 172
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 173
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 175
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->webViewParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->parentParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void

    .line 156
    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x1e

    const/4 v6, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "noti_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 79
    const-string v1, "image"

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "click_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "click_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 87
    const-string v1, "no"

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversion_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversion_key"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->conversionKey:I

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "landing_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "landing_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;

    .line 98
    :cond_5
    const-string v1, "IGAW_QA"

    const-string v2, "img_url = %s, type = %s, click_action = %s, landing_url = %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->url:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    aput-object v4, v3, v10

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 100
    invoke-virtual {p0, v9}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 103
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 105
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 106
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 108
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 110
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 115
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landingClickActionListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutWebView(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_6
    :goto_0
    return-void

    .line 117
    :cond_7
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->noClickActionListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutWebView(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    :cond_8
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->type:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->clickAction:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landing_url:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 121
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->landingClickActionListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutImageView(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 123
    :cond_9
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->noClickActionListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->setLayoutImageView(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 413
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->img:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/NoticeDialog;->img:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method
