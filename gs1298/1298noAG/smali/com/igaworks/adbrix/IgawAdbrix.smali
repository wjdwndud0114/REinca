.class public Lcom/igaworks/adbrix/IgawAdbrix;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adbrix/IgawAdbrix$Commerce;,
        Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    }
.end annotation


# static fields
.field private static adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/igaworks/adbrix/core/ADBrixUpdateLog;->updateVersion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    return-object v0
.end method

.method public static buy(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$3;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$5;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static custom(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$16;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$16;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static custom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$17;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "errorName"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$15;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$15;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static firstTimeExperience(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$1;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static firstTimeExperience(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$2;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static flush()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->enableFlush()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$4;

    invoke-direct {v2}, Lcom/igaworks/adbrix/IgawAdbrix$4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "IGAW_QA"

    const-string v2, "Adbrix.flush >>  flushing now, try later "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->getFramework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    .line 43
    :cond_0
    sget-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    .line 44
    :cond_2
    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkFactory;->isHasAdbrixSDK:Z

    .line 45
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    return-object v0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseDataJsonString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "purchaseDetail"    # Lcom/igaworks/commerce/IgawCommerceProductModel;
    .param p3, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 618
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 619
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v7

    .line 623
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase II error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/Double;
    .param p3, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p4, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    .prologue
    .line 602
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v4

    .line 603
    .local v4, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-virtual {p4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 604
    .local v5, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v4    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v5    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v6

    .line 608
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase I error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/adbrix/IgawAdbrix$Currency;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .param p8, "category"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v9

    .line 338
    .local v9, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v9    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.purchase error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "quantity"    # I
    .param p7, "currency"    # Lcom/igaworks/commerce/IgawCommerce$Currency;
    .param p8, "category"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v9

    .line 349
    .local v9, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v9    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.purchase error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static purchase(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/PurchaseItemModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    .local p1, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/PurchaseItemModel;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    const-string v1, "IGAW_QA"

    const-string v2, "Adbrix.purchase >> Null or empty purchaseList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v10, "igawCommerceItemList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/igaworks/adbrix/PurchaseItemModel;

    .line 365
    .local v11, "item":Lcom/igaworks/adbrix/PurchaseItemModel;
    iget-object v1, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->currency:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v7

    .line 366
    .local v7, "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    iget-object v1, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->orderId:Ljava/lang/String;

    iget-object v2, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->productId:Ljava/lang/String;

    iget-object v3, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->productName:Ljava/lang/String;

    iget-wide v4, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->price:D

    iget v6, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->quantity:I

    iget-object v8, v11, Lcom/igaworks/adbrix/PurchaseItemModel;->category:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/igaworks/commerce/IgawCommerceItemModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/igaworks/commerce/IgawCommerce$Currency;Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceItemModel;

    move-result-object v0

    .line 367
    .local v0, "commerceItem":Lcom/igaworks/commerce/IgawCommerceItemModel;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    .end local v0    # "commerceItem":Lcom/igaworks/commerce/IgawCommerceItemModel;
    .end local v7    # "commerceCurrency":Lcom/igaworks/commerce/IgawCommerce$Currency;
    .end local v10    # "igawCommerceItemList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    .end local v11    # "item":Lcom/igaworks/adbrix/PurchaseItemModel;
    :catch_0
    move-exception v9

    .line 371
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adbrix.purchase error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "igawCommerceItemList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceItemModel;>;"
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v1

    invoke-interface {v1, p0, v10}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchase(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderID"    # Ljava/lang/String;
    .param p3, "paymentMethod"    # Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/commerce/IgawCommerceProductModel;",
            ">;",
            "Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 633
    .local p2, "purchaseList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/commerce/IgawCommerceProductModel;>;"
    :try_start_0
    invoke-virtual {p3}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v6

    .line 634
    .local v6, "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->purchaseBulk(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v6    # "commerceMethod":Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v7

    .line 638
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adbrix.Commerce.purchase III error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static retention(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$7;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$7;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static retention(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$8;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 3
    .param p0, "age"    # I

    .prologue
    .line 186
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$9;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$9;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCustomCohort(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
    .locals 3
    .param p0, "cohortVariable"    # Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;
    .param p1, "cohort"    # Ljava/lang/String;

    .prologue
    .line 218
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$11;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$11;-><init>(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDemographic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$6;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGender(I)V
    .locals 3
    .param p0, "gender"    # I

    .prologue
    .line 202
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$10;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$10;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static useCoupon(Ljava/lang/String;)V
    .locals 3
    .param p0, "coupon"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$12;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$12;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viral(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$13;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/IgawAdbrix$13;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/IgawAdbrix$14;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/adbrix/IgawAdbrix$14;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
