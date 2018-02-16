.class public Lorg/apache/commons/net/ftp/FTPClientConfig;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final LANGUAGE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYST_AS400:Ljava/lang/String; = "AS/400"

.field public static final SYST_L8:Ljava/lang/String; = "TYPE: L8"

.field public static final SYST_MACOS_PETER:Ljava/lang/String; = "MACOS PETER"

.field public static final SYST_MVS:Ljava/lang/String; = "MVS"

.field public static final SYST_NETWARE:Ljava/lang/String; = "NETWARE"

.field public static final SYST_NT:Ljava/lang/String; = "WINDOWS"

.field public static final SYST_OS2:Ljava/lang/String; = "OS/2"

.field public static final SYST_OS400:Ljava/lang/String; = "OS/400"

.field public static final SYST_UNIX:Ljava/lang/String; = "UNIX"

.field public static final SYST_VMS:Ljava/lang/String; = "VMS"


# instance fields
.field private defaultDateFormatStr:Ljava/lang/String;

.field private lenientFutureDates:Z

.field private recentDateFormatStr:Ljava/lang/String;

.field private serverLanguageCode:Ljava/lang/String;

.field private final serverSystemKey:Ljava/lang/String;

.field private serverTimeZoneId:Ljava/lang/String;

.field private shortMonthNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 274
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    .line 284
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "de"

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "it"

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "es"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "pt"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "da"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sv"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "no"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "nl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "ro"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sq"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sq"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sh"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sh"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sk"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "sl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    const-string v0, "UNIX"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 221
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "systemKey"    # Ljava/lang/String;
    .param p2, "defaultDateFormatStr"    # Ljava/lang/String;
    .param p3, "recentDateFormatStr"    # Ljava/lang/String;
    .param p4, "serverLanguageCode"    # Ljava/lang/String;
    .param p5, "shortMonthNames"    # Ljava/lang/String;
    .param p6, "serverTimeZoneId"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 267
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 268
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 270
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 271
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public static getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 3
    .param p0, "shortmonths"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "months":[Ljava/lang/String;
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 558
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v0, v1}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 559
    return-object v0
.end method

.method public static getSupportedLanguageCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 3
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 535
    sget-object v1, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, "lang":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 537
    instance-of v1, v0, Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 538
    new-instance v1, Ljava/text/DateFormatSymbols;

    check-cast v0, Ljava/util/Locale;

    .end local v0    # "lang":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 543
    :goto_0
    return-object v1

    .line 539
    .restart local v0    # "lang":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 540
    check-cast v0, Ljava/lang/String;

    .end local v0    # "lang":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    goto :goto_0

    .line 543
    .restart local v0    # "lang":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "shortmonths"    # Ljava/lang/String;

    .prologue
    .line 563
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 565
    .local v0, "monthcnt":I
    const/16 v5, 0xc

    if-eq v5, v0, :cond_0

    .line 566
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 569
    :cond_0
    const/16 v5, 0xd

    new-array v1, v5, [Ljava/lang/String;

    .line 570
    .local v1, "months":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 571
    .local v2, "pos":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 572
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    .line 574
    :cond_1
    const-string v5, ""

    aput-object v5, v1, v2

    .line 575
    return-object v1
.end method


# virtual methods
.method public getDefaultDateFormatStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentDateFormatStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSystemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonthNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-object v0
.end method

.method public isLenientFutureDates()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return v0
.end method

.method public setDefaultDateFormatStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultDateFormatStr"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setLenientFutureDates(Z)V
    .locals 0
    .param p1, "lenientFutureDates"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 437
    return-void
.end method

.method public setRecentDateFormatStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "recentDateFormatStr"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setServerLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverLanguageCode"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setServerTimeZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverTimeZoneId"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setShortMonthNames(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortMonthNames"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 475
    return-void
.end method
