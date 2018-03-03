.class public Lcom/igaworks/adbrix/core/ADBrixHttpManager;
.super Lcom/igaworks/net/CommonHttpManager;
.source "ADBrixHttpManager.java"


# static fields
.field private static manager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

.field private static onGetSchedule:Z

.field public static onGetScheduleEvent:Lcom/igaworks/adbrix/core/OnGetSchedule;

.field public static schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;


# instance fields
.field private COMPLETE_CPE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

.field private PARTICIPATION_PROGRESS_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

.field private SCHEDULE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/igaworks/net/CommonHttpManager;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->cpn_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CampaignVer2/GetSchedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->SCHEDULE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->cpn_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CampaignVer2/GetCampaignInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->PARTICIPATION_PROGRESS_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->cpn_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Campaign/Complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->COMPLETE_CPE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/adbrix/core/ADBrixHttpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->COMPLETE_CPE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;II)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPESingleConversion(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->onGetSchedule:Z

    return p0
.end method

.method static synthetic access$700(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->manager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    invoke-direct {v0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->manager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    .line 95
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->manager:Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    return-object v0
.end method

.method private preDownloadImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 681
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {p1}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 696
    .local v2, "nUrl":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$7;

    const/4 v3, 0x0

    .line 697
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    const-string v4, "imagecache"

    invoke-virtual {v1, v4}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$7;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v1, v6

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v0

    .line 696
    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v7

    .line 708
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 712
    .end local v2    # "nUrl":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 713
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p2, "complete_conversion_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$5;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 658
    return-void
.end method

.method private restoreCPESingleConversion(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversion"    # I
    .param p3, "resultCode"    # I

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$4;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;II)V

    sget-object v2, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 645
    return-void
.end method


# virtual methods
.method public completeCPECallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/core/RequestParameter;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "activity_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .local p4, "imp_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    .local p5, "complete_conversion_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v8

    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$1;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/igaworks/core/RequestParameter;Ljava/util/ArrayList;)V

    invoke-virtual {v8, p2, v0}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const-string v0, "IGAW_QA"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    invoke-virtual {p0, p2, p3, p4}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreTrackingInfo_Common(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 320
    invoke-direct {p0, p2, p5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->restoreCPEConversionList(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getJSONParam(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 619
    .local v2, "obj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 620
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 622
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 630
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getParticipationProgressForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V
    .locals 10
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "campaignKey"    # I
    .param p5, "puid"    # Ljava/lang/String;
    .param p6, "usn"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;

    .prologue
    .line 543
    iget-object v7, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->PARTICIPATION_PROGRESS_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 544
    .local v7, "url":Ljava/lang/String;
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object/from16 v4, p6

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$3;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 610
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 611
    return-void
.end method

.method public getScheduleForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/adbrix/model/ScheduleContainer;)V
    .locals 7
    .param p1, "parameter"    # Lcom/igaworks/core/RequestParameter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "puid"    # Ljava/lang/String;
    .param p4, "scheduleContainer"    # Lcom/igaworks/adbrix/model/ScheduleContainer;

    .prologue
    .line 326
    iget-object v5, p0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->SCHEDULE_REQUEST_URL_FOR_ADBrix:Ljava/lang/String;

    .line 327
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$2;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 538
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 540
    return-void
.end method

.method public makeCompleteToast(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msec"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 661
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    invoke-static {p1, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 666
    .local v6, "popupToast":Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 668
    new-instance v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager$6;

    const-wide/16 v4, 0x64

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$6;-><init>(Lcom/igaworks/adbrix/core/ADBrixHttpManager;JJLandroid/widget/Toast;)V

    .line 674
    invoke-virtual {v0}, Lcom/igaworks/adbrix/core/ADBrixHttpManager$6;->start()Landroid/os/CountDownTimer;

    .line 676
    .end local v6    # "popupToast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
