.class public Lcom/igaworks/commerce/IgawCommerce$Currency;
.super Ljava/lang/Object;
.source "IgawCommerce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/IgawCommerce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Currency"
.end annotation


# static fields
.field public static final CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

.field public static final VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "KR"

    const-string v2, "KRW"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 147
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "US"

    const-string v2, "USD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 148
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "JP"

    const-string v2, "JPY"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 149
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "EU"

    const-string v2, "EUR"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 150
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "UK"

    const-string v2, "GBP"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 151
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "CH"

    const-string v2, "CNY"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 152
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "TW"

    const-string v2, "TWD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 153
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "HK"

    const-string v2, "HKD"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 155
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "ID"

    const-string v2, "IDR"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 156
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "IN"

    const-string v2, "INR"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 157
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "RU"

    const-string v2, "RUB"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 158
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "TH"

    const-string v2, "THB"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 160
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "VN"

    const-string v2, "VND"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 161
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    const-string v1, "MY"

    const-string v2, "MYR"

    invoke-direct {v0, v1, v2}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->country:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->code:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public static getCurrencyByCountryCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 319
    :goto_0
    return-object v0

    .line 261
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 265
    :cond_1
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 269
    :cond_2
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 273
    :cond_3
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 277
    :cond_4
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 281
    :cond_5
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 285
    :cond_6
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 289
    :cond_7
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 293
    :cond_8
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 297
    :cond_9
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 301
    :cond_a
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 303
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 309
    :cond_b
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 311
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 313
    :cond_c
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 315
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 319
    :cond_d
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-direct {v0, p0, p0}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;
    .locals 1
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->KR_KRW:Lcom/igaworks/commerce/IgawCommerce$Currency;

    .line 251
    :goto_0
    return-object v0

    .line 193
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->US_USD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->JP_JPY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->EU_EUR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 205
    :cond_3
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->UK_GBP:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 209
    :cond_4
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->CN_CNY:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 213
    :cond_5
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TW_TWD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 217
    :cond_6
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->HK_HKD:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 221
    :cond_7
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->ID_IDR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto :goto_0

    .line 225
    :cond_8
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->IN_INR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 229
    :cond_9
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->RU_RUB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 233
    :cond_a
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->TH_THB:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 241
    :cond_b
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->VN_VND:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 245
    :cond_c
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 247
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$Currency;->MY_MYR:Lcom/igaworks/commerce/IgawCommerce$Currency;

    goto/16 :goto_0

    .line 251
    :cond_d
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$Currency;

    invoke-direct {v0, p0, p0}, Lcom/igaworks/commerce/IgawCommerce$Currency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->country:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->code:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->country:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$Currency;->code:Ljava/lang/String;

    return-object v0
.end method
