.class public Lcom/tapjoy/TJCurrency;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

.field private static e:Lcom/tapjoy/TJSpendCurrencyListener;

.field private static f:Lcom/tapjoy/TJAwardCurrencyListener;

.field private static g:Lcom/tapjoy/TJEarnedCurrencyListener;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCurrency;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJCurrency;->b:I

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCurrency;Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCurrency;->a(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 6

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_4

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    const-string v1, "TapPoints"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 193
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 196
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    invoke-virtual {p0}, Lcom/tapjoy/TJCurrency;->getLocalCurrencyBalance()I

    move-result v2

    .line 200
    sget-object v3, Lcom/tapjoy/TJCurrency;->g:Lcom/tapjoy/TJEarnedCurrencyListener;

    if-eqz v3, :cond_0

    .line 202
    const/16 v3, -0x270f

    if-eq v2, v3, :cond_0

    .line 204
    if-le v1, v2, :cond_0

    .line 205
    const-string v3, "TJCurrency"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "earned: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/tapjoy/TJCurrency;->g:Lcom/tapjoy/TJEarnedCurrencyListener;

    sub-int v2, v1, v2

    invoke-interface {v3, v0, v2}, Lcom/tapjoy/TJEarnedCurrencyListener;->onEarnedCurrency(Ljava/lang/String;I)V

    .line 212
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCurrency;->saveCurrencyBalance(I)V

    .line 214
    sget-object v2, Lcom/tapjoy/TJCurrency;->d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    if-eqz v2, :cond_1

    .line 215
    sget-object v2, Lcom/tapjoy/TJCurrency;->d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    invoke-interface {v2, v0, v1}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing XML and calling listener: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 234
    :cond_2
    :goto_1
    sget-object v0, Lcom/tapjoy/TJCurrency;->d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/tapjoy/TJCurrency;->d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    const-string v1, "Failed to get currency balance"

    invoke-interface {v0, v1}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_3
    :try_start_3
    const-string v0, "TJCurrency"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "getCurrencyBalance response is invalid -- missing tags."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1

    .line 226
    :cond_4
    const-string v0, "TJCurrency"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "getCurrencyBalance response is invalid -- missing <Success> tag."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1

    .line 230
    :cond_5
    const-string v0, "TJCurrency"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "getCurrencyBalance response is NULL"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/tapjoy/TJCurrency;Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCurrency;->b(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 5

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    const-string v0, "Failed to spend currency"

    .line 251
    iget-object v1, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 253
    iget-object v1, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_2

    .line 256
    const-string v2, "Success"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    const-string v2, "TapPoints"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v3, "CurrencyName"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 264
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCurrency;->saveCurrencyBalance(I)V

    .line 271
    sget-object v2, Lcom/tapjoy/TJCurrency;->e:Lcom/tapjoy/TJSpendCurrencyListener;

    if-eqz v2, :cond_0

    .line 272
    sget-object v2, Lcom/tapjoy/TJCurrency;->e:Lcom/tapjoy/TJSpendCurrencyListener;

    invoke-interface {v2, v1, v0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponse(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_1
    :try_start_1
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "spendCurrency response is invalid -- missing tags."

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 293
    :cond_2
    :goto_1
    sget-object v1, Lcom/tapjoy/TJCurrency;->e:Lcom/tapjoy/TJSpendCurrencyListener;

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lcom/tapjoy/TJCurrency;->e:Lcom/tapjoy/TJSpendCurrencyListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    const-string v0, "Message"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v2, "TJCurrency"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "BalanceTooLowError"

    const-string v3, "MessageCode"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-static {}, Lcom/tapjoy/internal/es;->a()V

    goto :goto_1

    .line 286
    :cond_4
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "spendCurrency response is invalid -- missing <Success> tag."

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1

    .line 289
    :cond_5
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "spendCurrency response is NULL"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/tapjoy/TJCurrency;Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCurrency;->c(Lcom/tapjoy/TapjoyHttpURLResponse;)V

    return-void
.end method

.method private declared-synchronized c(Lcom/tapjoy/TapjoyHttpURLResponse;)V
    .locals 5

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    const-string v0, "Failed to award currency"

    .line 310
    iget-object v1, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 312
    iget-object v1, p1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_2

    .line 315
    const-string v2, "Success"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    const-string v2, "TapPoints"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "CurrencyName"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 325
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCurrency;->saveCurrencyBalance(I)V

    .line 332
    sget-object v2, Lcom/tapjoy/TJCurrency;->f:Lcom/tapjoy/TJAwardCurrencyListener;

    if-eqz v2, :cond_0

    .line 333
    sget-object v2, Lcom/tapjoy/TJCurrency;->f:Lcom/tapjoy/TJAwardCurrencyListener;

    invoke-interface {v2, v1, v0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponse(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_1
    :try_start_1
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "awardCurrency response is invalid -- missing tags."

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 352
    :cond_2
    :goto_1
    sget-object v1, Lcom/tapjoy/TJCurrency;->f:Lcom/tapjoy/TJAwardCurrencyListener;

    if-eqz v1, :cond_0

    .line 353
    sget-object v1, Lcom/tapjoy/TJCurrency;->f:Lcom/tapjoy/TJAwardCurrencyListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 341
    const-string v0, "Message"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "TJCurrency"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_4
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "awardCurrency response is invalid -- missing <Success> tag."

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1

    .line 348
    :cond_5
    const-string v1, "TJCurrency"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "awardCurrency response is NULL"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 4
    .param p1, "amount"    # I
    .param p2, "listener"    # Lcom/tapjoy/TJAwardCurrencyListener;

    .prologue
    .line 128
    if-gez p1, :cond_0

    .line 129
    const-string v0, "TJCurrency"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Amount must be a positive number for the awardCurrency API"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 156
    :goto_0
    return-void

    .line 133
    :cond_0
    iput p1, p0, Lcom/tapjoy/TJCurrency;->b:I

    .line 135
    sput-object p2, Lcom/tapjoy/TJCurrency;->f:Lcom/tapjoy/TJAwardCurrencyListener;

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCurrency$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCurrency$3;-><init>(Lcom/tapjoy/TJCurrency;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tapjoy/TJGetCurrencyBalanceListener;

    .prologue
    .line 73
    sput-object p1, Lcom/tapjoy/TJCurrency;->d:Lcom/tapjoy/TJGetCurrencyBalanceListener;

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCurrency$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCurrency$1;-><init>(Lcom/tapjoy/TJCurrency;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method public getLocalCurrencyBalance()I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    const-string v1, "last_currency_balance"

    const/16 v2, -0x270f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    return v0
.end method

.method public saveCurrencyBalance(I)V
    .locals 3
    .param p1, "balance"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tapjoy/TJCurrency;->c:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    const-string v1, "last_currency_balance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/TJEarnedCurrencyListener;

    .prologue
    .line 166
    sput-object p1, Lcom/tapjoy/TJCurrency;->g:Lcom/tapjoy/TJEarnedCurrencyListener;

    .line 167
    return-void
.end method

.method public spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 4
    .param p1, "amount"    # I
    .param p2, "listener"    # Lcom/tapjoy/TJSpendCurrencyListener;

    .prologue
    .line 96
    if-gez p1, :cond_0

    .line 97
    const-string v0, "TJCurrency"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Amount must be a positive number for the spendCurrency API"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCurrency;->a:Ljava/lang/String;

    .line 103
    sput-object p2, Lcom/tapjoy/TJCurrency;->e:Lcom/tapjoy/TJSpendCurrencyListener;

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCurrency$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCurrency$2;-><init>(Lcom/tapjoy/TJCurrency;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
