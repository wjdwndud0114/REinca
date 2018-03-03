.class public Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PromotionActivityDialog.java"

# interfaces
.implements Lcom/igaworks/adbrix/cpe/common/DialogActionListener;


# static fields
.field public static final CAN_NOT_PARTICIPATE_RESULT_CODE:I = 0x14b6

.field public static final CLICK_ACTION_CLOSE:Ljava/lang/String; = "no"

.field public static final CLICK_ACTION_URL:Ljava/lang/String; = "url"

.field public static final CLOSE_BTN_URL:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/popup_close_bt.png"

.field public static final SLIDE_AREA_ID:I = 0x1999

.field public static final THUMBNAIL_ARROW_ID:I = 0x4999

.field public static final THUMBNAIL_IV_ID:I = 0x5999

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_WEB:Ljava/lang/String; = "web"

.field public static isActive:Z

.field public static onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

.field public static promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

.field public static promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;


# instance fields
.field private campaignKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private containerParam:Landroid/widget/LinearLayout$LayoutParams;

.field public contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

.field private currentCampaignKey:I

.field private currentSlideNo:I

.field private img:Landroid/graphics/Bitmap;

.field private isPortrait:Z

.field private media:Lcom/igaworks/adbrix/model/Media;

.field private primaryCampaignKey:I

.field private promotions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private spaceKey:Ljava/lang/String;

.field protected windowPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 164
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 167
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 169
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 175
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveImageFile(Ljava/lang/String;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->computeHashedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 184
    .local v5, "mPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
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

    .line 188
    .local v3, "mFile1":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v4, "mFile2":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    .local v6, "outStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 207
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 209
    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finishDialog()V
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/PromotionActionListener;->onHideDialog()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    .line 262
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    :try_start_0
    sput-object p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionDialog:Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;

    .line 83
    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/igaworks/adbrix/model/Media;

    invoke-direct {v1}, Lcom/igaworks/adbrix/model/Media;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    new-instance v2, Lcom/igaworks/adbrix/model/Language;

    invoke-direct {v2}, Lcom/igaworks/adbrix/model/Language;-><init>()V

    invoke-virtual {v1, v2}, Lcom/igaworks/adbrix/model/Media;->setLanguage(Lcom/igaworks/adbrix/model/Language;)V

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v1

    if-nez v1, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    new-instance v2, Lcom/igaworks/adbrix/model/Theme;

    invoke-direct {v2}, Lcom/igaworks/adbrix/model/Theme;-><init>()V

    invoke-virtual {v1, v2}, Lcom/igaworks/adbrix/model/Media;->setTheme(Lcom/igaworks/adbrix/model/Theme;)V

    .line 97
    :cond_2
    if-eqz p1, :cond_4

    .line 98
    const-string v1, "currentCampaignKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentCampaignKey:I

    .line 99
    const-string v1, "slideNo"

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentSlideNo:I

    .line 104
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "spaceKey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->spaceKey:Ljava/lang/String;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignKeys"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    .line 108
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    .line 160
    :goto_1
    return-void

    .line 101
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "primaryCampaignKey"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->primaryCampaignKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v15

    .line 157
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->finish()V

    .line 158
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotions:Landroid/util/SparseArray;

    .line 114
    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Schedule;->getPromotions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/igaworks/adbrix/model/Promotion;

    .line 115
    .local v17, "promotion":Lcom/igaworks/adbrix/model/Promotion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    invoke-virtual/range {v17 .. v17}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotions:Landroid/util/SparseArray;

    invoke-virtual/range {v17 .. v17}, Lcom/igaworks/adbrix/model/Promotion;->getCampaignKey()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 120
    .end local v17    # "promotion":Lcom/igaworks/adbrix/model/Promotion;
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->requestWindowFeature(I)Z

    .line 122
    const/16 v1, 0xa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->windowPadding:I

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 124
    .local v16, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    const v1, 0x3f333333    # 0.7f

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 126
    const/4 v1, -0x1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    const/4 v1, -0x1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 128
    const/16 v1, 0x11

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 140
    .local v14, "config":Landroid/content/res/Configuration;
    iget v1, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 141
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isPortrait:Z

    .line 146
    :goto_3
    const-string v1, "IGAW_QA"

    const-string v2, "Promotion Dialog Open : primary campaign key = %d, current campaign key = %d, slide no = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->primaryCampaignKey:I

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentCampaignKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentSlideNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 146
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    if-nez v1, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isPortrait:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentCampaignKey:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->primaryCampaignKey:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->spaceKey:Ljava/lang/String;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    if-nez p1, :cond_a

    const/4 v12, 0x1

    :goto_4
    const/4 v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v10, p0

    invoke-static/range {v1 .. v13}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->getInstance(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;ZZ)Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    .line 153
    :cond_8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->containerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->getRootView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->containerParam:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 143
    :cond_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isPortrait:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 150
    :cond_a
    const/4 v12, 0x0

    goto :goto_4
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isActive:Z

    .line 252
    return-void
.end method

.method public onPlayBtnClick()V
    .locals 1

    .prologue
    .line 274
    :try_start_0
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotionActionListener:Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/PromotionActionListener;->onPlayButtonClick()V

    .line 277
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    if-eqz v0, :cond_1

    .line 278
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->onPlayBtnClickListener:Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 235
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 236
    sput-boolean v11, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isActive:Z

    .line 238
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    if-nez v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->media:Lcom/igaworks/adbrix/model/Media;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->campaignKeys:Ljava/util/List;

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->promotions:Landroid/util/SparseArray;

    iget-boolean v5, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->isPortrait:Z

    iget v6, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->currentCampaignKey:I

    iget v7, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->primaryCampaignKey:I

    iget-object v8, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->spaceKey:Ljava/lang/String;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p0

    move-object v9, p0

    move v12, v11

    invoke-static/range {v0 .. v12}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->getInstance(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;ZZ)Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->onResume()V

    .line 246
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    invoke-virtual {v0, p0}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->setActionListener(Lcom/igaworks/adbrix/cpe/common/DialogActionListener;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    :try_start_0
    const-string v1, "currentCampaignKey"

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->contentsProvider:Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/common/FragmentActivityDialogContentsCreator;->getCurrentCampaignKey()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "slideNo"

    sget-object v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    iget-object v2, v2, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSlideArea(II)V
    .locals 3
    .param p1, "campaignKey"    # I
    .param p2, "currentSlideNo"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PromotionActivityDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 266
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v1, 0x1999

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->newInstance(IIZ)Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 268
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 269
    return-void
.end method
