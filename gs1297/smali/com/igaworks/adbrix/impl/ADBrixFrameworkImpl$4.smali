.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->addConversionCache(Landroid/content/Context;Lcom/igaworks/core/RequestParameter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$rp:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Ljava/lang/String;Landroid/content/Context;Lcom/igaworks/core/RequestParameter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$rp:Lcom/igaworks/core/RequestParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    sget-object v10, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v10, :cond_3

    .line 304
    new-instance v7, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$result:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "Result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 306
    const-string v10, "Data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 307
    const-string v10, "Data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "dataInfo":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "dataObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    const-string v10, "conversion_key_list"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "conversionArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 311
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 312
    .local v8, "key":I
    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$context:Landroid/content/Context;

    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReferralResponse - addConversionCache > key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 313
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 316
    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$rp:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v10}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$rp:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v10}, Lcom/igaworks/core/RequestParameter;->getConversionCache()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 318
    :cond_0
    sget-object v10, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Schedule;->getEngagements()Ljava/util/List;

    move-result-object v4

    .line 320
    .local v4, "engagements":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_2

    .line 321
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/adbrix/model/Engagement;

    .line 323
    .local v3, "engagement":Lcom/igaworks/adbrix/model/Engagement;
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getConversionKey()I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 324
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteMessage()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "msg":Ljava/lang/String;
    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$context:Landroid/content/Context;

    const-string v11, "IGAW_QA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callback complete cpe by referral > msg : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", duration : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 327
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v13

    invoke-virtual {v13}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    .line 326
    invoke-static {v10, v11, v12, v13}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v10

    if-lez v10, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    const-string v10, "null"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 331
    iget-object v10, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v10

    iget-object v11, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Engagement;->getDisplayData()Lcom/igaworks/adbrix/model/EngagementDisplay;

    move-result-object v12

    invoke-virtual {v12}, Lcom/igaworks/adbrix/model/EngagementDisplay;->getCompleteToastMSec()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13, v9}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->makeCompleteToast(Landroid/content/Context;JLjava/lang/String;)V

    .line 320
    .end local v9    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 310
    .end local v3    # "engagement":Lcom/igaworks/adbrix/model/Engagement;
    .end local v4    # "engagements":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/Engagement;>;"
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 343
    .end local v0    # "conversionArray":Lorg/json/JSONArray;
    .end local v1    # "dataInfo":Ljava/lang/String;
    .end local v2    # "dataObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "key":I
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method
