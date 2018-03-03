.class public final Lcom/tapjoy/TapjoyConnectUnity;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"


# static fields
.field private static final AWARD_CURRENCY_LISTENER:Lcom/tapjoy/TJAwardCurrencyListener;

.field private static final CONNECT_FLAG_DICTIONARY_NAME:Ljava/lang/String; = "connectFlags"

.field private static final CONNECT_LISTENER:Lcom/tapjoy/TJConnectListener;

.field private static final CURRENCY_ALERT_CODE:I = 0x1

.field private static final EARNED_CURRENCY_LISTENER:Lcom/tapjoy/TJEarnedCurrencyListener;

.field private static final GET_CURRENCY_BALANCE_LISTENER:Lcom/tapjoy/TJGetCurrencyBalanceListener;

.field private static final PLACEMENT_LISTENER:Lcom/tapjoy/TJPlacementListener;

.field private static final PLACEMENT_VIDEO_LISTENER:Lcom/tapjoy/TJPlacementVideoListener;

.field private static final SEGMENTATION_DICTIONARY_NAME:Ljava/lang/String; = "segmentationParams"

.field private static final SET_USER_ID_LISTENER:Lcom/tapjoy/TJSetUserIDListener;

.field private static final SPEND_CURRENCY_LISTENER:Lcom/tapjoy/TJSpendCurrencyListener;

.field private static final TAG:Ljava/lang/String; = "TapjoyConnectUnity"

.field private static final UNITY_GAME_OBJECT_NAME:Ljava/lang/String; = "TapjoyUnity"

.field private static final VIDEO_LISTENER:Lcom/tapjoy/TJVideoListener;

.field private static actionRequestMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static activity:Landroid/app/Activity;

.field private static applicationContext:Landroid/content/Context;

.field private static cSharpDictionaryRefs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static cSharpGuidMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private static earnedAmount:I

.field private static earnedCurrencyName:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field private static javaToCSharpMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

.field private static tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;


# instance fields
.field private tapjoycurrencyTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->javaToCSharpMap:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    .line 56
    const-string v0, "Points"

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedCurrencyName:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$1;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$1;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->CONNECT_LISTENER:Lcom/tapjoy/TJConnectListener;

    .line 85
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$2;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$2;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->VIDEO_LISTENER:Lcom/tapjoy/TJVideoListener;

    .line 103
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$3;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$3;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->PLACEMENT_LISTENER:Lcom/tapjoy/TJPlacementListener;

    .line 202
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$4;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$4;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->PLACEMENT_VIDEO_LISTENER:Lcom/tapjoy/TJPlacementVideoListener;

    .line 244
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$5;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$5;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->SET_USER_ID_LISTENER:Lcom/tapjoy/TJSetUserIDListener;

    .line 259
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$6;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$6;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->GET_CURRENCY_BALANCE_LISTENER:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    .line 274
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$7;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$7;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->SPEND_CURRENCY_LISTENER:Lcom/tapjoy/TJSpendCurrencyListener;

    .line 289
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$8;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$8;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->AWARD_CURRENCY_LISTENER:Lcom/tapjoy/TJAwardCurrencyListener;

    .line 304
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$9;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$9;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->EARNED_CURRENCY_LISTENER:Lcom/tapjoy/TJEarnedCurrencyListener;

    .line 542
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity$14;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity$14;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->showDefaultEarnedCurrencyAlert:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoycurrencyTotal:I

    .line 315
    return-void
.end method

.method static synthetic access$000()Lcom/tapjoy/TJEarnedCurrencyListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->EARNED_CURRENCY_LISTENER:Lcom/tapjoy/TJEarnedCurrencyListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tapjoy/TJVideoListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->VIDEO_LISTENER:Lcom/tapjoy/TJVideoListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->javaToCSharpMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    .prologue
    .line 37
    sput p0, Lcom/tapjoy/TapjoyConnectUnity;->earnedAmount:I

    return p0
.end method

.method static synthetic access$500()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Lcom/tapjoy/TJConnectListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->CONNECT_LISTENER:Lcom/tapjoy/TJConnectListener;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->earnedCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->actionComplete(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static actionRequestCancelled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJActionRequest;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->cancelled()V

    .line 521
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    return-void
.end method

.method public static actionRequestCompleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJActionRequest;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Lcom/tapjoy/TJActionRequest;->completed()V

    .line 513
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    return-void
.end method

.method public static activate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    .line 319
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->applicationContext:Landroid/content/Context;

    .line 320
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 321
    if-nez p0, :cond_0

    .line 322
    const-string v0, "unknown"

    .line 325
    :cond_0
    const-string v0, "unity"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setPlugin(Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$10;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectUnity$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    :cond_1
    return-void
.end method

.method public static awardCurrency(I)V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->AWARD_CURRENCY_LISTENER:Lcom/tapjoy/TJAwardCurrencyListener;

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 429
    return-void
.end method

.method public static connect(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 362
    const-string v0, "connectFlags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity;->connect(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 363
    return-void
.end method

.method public static connect(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Lcom/tapjoy/TapjoyConnectUnity;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectUnity;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectUnity;->tapjoyUnity:Lcom/tapjoy/TapjoyConnectUnity;

    .line 385
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$11;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyConnectUnity$11;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    :cond_0
    return-void
.end method

.method public static createPlacement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 462
    new-instance v0, Lcom/tapjoy/TJPlacement;

    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/tapjoy/TapjoyConnectUnity;->PLACEMENT_LISTENER:Lcom/tapjoy/TJPlacementListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    .line 463
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->PLACEMENT_VIDEO_LISTENER:Lcom/tapjoy/TJPlacementVideoListener;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacement;->setVideoListener(Lcom/tapjoy/TJPlacementVideoListener;)V

    .line 466
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->javaToCSharpMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-void
.end method

.method public static dismissPlacementContent()V
    .locals 0

    .prologue
    .line 472
    invoke-static {}, Lcom/tapjoy/TJPlacement;->dismissContent()V

    .line 473
    return-void
.end method

.method public static getCurrencyBalance()V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->GET_CURRENCY_BALANCE_LISTENER:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 433
    return-void
.end method

.method public static getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/tapjoy/Tapjoy;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public static getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getReferenceDictionary(Ljava/lang/String;Z)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 577
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 578
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 579
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    return-object v0
.end method

.method public static getSupportURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/tapjoy/Tapjoy;->getSupportURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->getSupportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPlacementContentAvailable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 491
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result v0

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlacementContentReady(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 499
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onActivityStart()V
    .locals 2

    .prologue
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 396
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 397
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$12;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectUnity$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    :cond_0
    return-void
.end method

.method public static onActivityStop()V
    .locals 2

    .prologue
    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 408
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TapjoyConnectUnity$13;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectUnity$13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    return-void
.end method

.method public static removeActionRequest(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->actionRequestMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return-void
.end method

.method public static removePlacement(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-void
.end method

.method public static requestPlacementContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 477
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 480
    :cond_0
    return-void
.end method

.method public static setDictionaryInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 664
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 665
    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 667
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 671
    :goto_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpDictionaryRefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 672
    if-nez v0, :cond_0

    .line 673
    const-string v0, "TapjoyUnity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no dictionary reference by the name of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_1
    return-void

    .line 677
    :cond_0
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;FLjava/lang/String;)V
    .locals 2

    .prologue
    .line 635
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 621
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 607
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-void
.end method

.method public static setKeyValueInDictionary(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 649
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectUnity;->getReferenceDictionary(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->SET_USER_ID_LISTENER:Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 425
    return-void
.end method

.method public static showDefaultEarnedCurrencyAlert()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 453
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 455
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 456
    sget-object v1, Lcom/tapjoy/TapjoyConnectUnity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    :cond_0
    return-void
.end method

.method public static showPlacementContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->cSharpGuidMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 484
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 487
    :cond_0
    return-void
.end method

.method public static spendCurrency(I)V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/tapjoy/TapjoyConnectUnity;->SPEND_CURRENCY_LISTENER:Lcom/tapjoy/TJSpendCurrencyListener;

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 437
    return-void
.end method

.method public static trackEvent_CNPPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 531
    invoke-static/range {p0 .. p5}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 532
    return-void
.end method

.method public static trackEvent_CNPPV1V2V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 537
    invoke-static/range {p0 .. p12}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 539
    return-void
.end method
