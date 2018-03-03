.class public Lcom/igaworks/adbrix/IgawAdbrix$Currency;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/IgawAdbrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Currency"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

.field public static final US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "KR"

    const-string v2, "KRW"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 385
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "US"

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 386
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "JP"

    const-string v2, "JPY"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 387
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "EU"

    const-string v2, "EUR"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 388
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "UK"

    const-string v2, "GBP"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 389
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "CN"

    const-string v2, "CNY"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 390
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "TW"

    const-string v2, "TWD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 391
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    const-string v1, "HK"

    const-string v2, "HKD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->country:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->code:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public static getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 444
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 461
    :goto_0
    return-object v0

    .line 446
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 448
    :cond_1
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 450
    :cond_2
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 452
    :cond_3
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 454
    :cond_4
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 456
    :cond_5
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 457
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 458
    :cond_6
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 459
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 461
    :cond_7
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-direct {v0, p0, p0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/adbrix/IgawAdbrix$Currency;
    .locals 1
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->KR_KRW:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    .line 437
    :goto_0
    return-object v0

    .line 422
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->US_USD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 424
    :cond_1
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->JP_JPY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 426
    :cond_2
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->EU_EUR:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 428
    :cond_3
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->UK_GBP:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 430
    :cond_4
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->CN_CNY:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 432
    :cond_5
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->TW_TWD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 434
    :cond_6
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 435
    sget-object v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->HK_HKD:Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    goto :goto_0

    .line 437
    :cond_7
    new-instance v0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;

    invoke-direct {v0, p0, p0}, Lcom/igaworks/adbrix/IgawAdbrix$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->country:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->code:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->country:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/igaworks/adbrix/IgawAdbrix$Currency;->code:Ljava/lang/String;

    return-object v0
.end method
