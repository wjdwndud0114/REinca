.class public Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/adpopcorn/cores/c/a$c;


# static fields
.field private static apiCoreSDKInstance:Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apLanguage:Lcom/igaworks/adpopcorn/cores/common/f;

.field private apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

.field private campaignAuth:Ljava/lang/String;

.field private campaignKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private controller:Lcom/igaworks/adpopcorn/cores/c/a;

.field private isInstallSuccess:Z

.field private isTestMode:Z

.field private offerwallCampaignModelList:Ljava/util/List;

.field private partiType:I

.field private redirectURL:Ljava/lang/String;

.field private selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

.field private userStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IgawAdpopcornAPICoreSDK"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isTestMode:Z

    iput v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    iput v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isInstallSuccess:Z

    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->offerwallCampaignModelList:Ljava/util/List;

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/f;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apLanguage:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apLanguage:Lcom/igaworks/adpopcorn/cores/common/f;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/f;->a()V

    return-void
.end method

.method private callbackCheckPackageName(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 4

    const/16 v3, 0x32

    const/16 v2, 0x17

    if-eqz p2, :cond_8

    :try_start_0
    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x6a

    const-string v2, "Already installed app"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->joinCampaign()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    if-ne v0, v2, :cond_0

    :cond_4
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/16 v1, 0x6a

    const-string v2, "Already installed app"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->completeCampaign(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apLanguage:Lcom/igaworks/adpopcorn/cores/common/f;

    iget-object v1, v1, Lcom/igaworks/adpopcorn/cores/common/f;->aS:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->completeCampaign(ZLjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isInstallSuccess:Z

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->joinCampaign()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->joinCampaign()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private callbackCheckParticipate(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x66

    const-string v2, "Server Timeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v1, "IgawAdpopcornAPICoreSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackCheckParticipate result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ResultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_2
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->joinCampaign()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0x6b

    const-string v2, "You have already participated in this campaign."

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0x64

    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_4
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method private callbackCompleteReward(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x66

    const-string v2, "Server Timeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v1, "IgawAdpopcornAPICoreSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackCompleteReward result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ResultMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0xb

    const-string v2, "Your reward was delivered successfully. It may take up to 5 minutes to receive your reward depending on the network conditions."

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_2
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d0

    if-ne v2, v1, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x6b

    :try_start_3
    const-string v2, "You have already participated in this campaign."

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x802

    if-ne v2, v1, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x6d

    const-string v2, "invalid installer."

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/16 v2, 0x6d

    invoke-virtual {p0, v1, v2, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_4
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method private callbackGetCampaignList(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v1, "IgawAdpopcornAPICoreSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackGetCampaignList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/d;->b()Lcom/igaworks/adpopcorn/cores/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x68

    const-string v2, "Emulator or Rooting device"

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x66

    const-string v2, "Server Timeout"

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unknown Server Error"

    const-string v1, ""

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x1

    const-string v2, "Success"

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->offerwallCampaignModelList:Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string v1, "ResultMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x65

    const-string v3, ""

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0x64

    const-string v2, "Unknown Server Error"

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private callbackParticipateCampaign(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 6

    const/16 v5, 0xa

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x66

    const-string v2, "Server Timeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_c

    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v1, "IgawAdpopcornAPICoreSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackParticipateCampaign result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ResultMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResultCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RedirectURL"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v2, "IgawAdpopcornAPICoreSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callbackParticipateCampaign success, redirectURL = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isInstallSuccess:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->completeCampaign(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isInstallSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_2
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_1
    :try_start_3
    const-string v4, ""

    iput-object v4, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->executeApplication(Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/16 v1, 0xa

    const-string v2, "Participate Success"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getVideoLandingInfoRequest()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_7

    :try_start_4
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->executeApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->completeCampaign(ZLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const/4 v0, 0x1

    const/16 v1, 0xa

    :try_start_5
    const-string v2, "Participate Success"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->openWebBrowser(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->openWebBrowser(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    const/16 v1, 0xa

    const-string v2, "Participate Success"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->redirectURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->openWebBrowser(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/16 v0, 0x3e7

    if-eq v3, v0, :cond_a

    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_b

    :cond_a
    const/4 v0, 0x0

    const/16 v1, 0x70

    const-string v2, "Daily Cap has been reached or the offer is no longer valid."

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    const/16 v1, 0x64

    :try_start_8
    const-string v2, "Unknown Server Error"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0
.end method

.method private callbackVideoAdDetailInfoRequest(Lcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 23

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/16 v3, 0x66

    const-string v4, "Server Timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x69

    const-string v4, "Emulator or Rooting device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-lez v2, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v3, "IgawAdpopcornAPICoreSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callbackVideoAdDetailInfoRequest result = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/igaworks/adpopcorn/cores/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/b/d;->a(Ljava/lang/String;)Lcom/igaworks/adpopcorn/cores/model/e;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->b()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->j()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->a()I

    move-result v16

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->m()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v3}, Lcom/igaworks/adpopcorn/cores/model/d;->l()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->p()I

    move-result v19

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->n()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->q()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/model/e;->s()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v22}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->showVideoRewardAdActivity(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v3, 0xa

    const-string v4, "Participate Success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private checkGetAccountPermission()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/d;->h()I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v4, "IgawAdpopcornAPICoreSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exceptionPermissionList : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    and-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v3, "IgawAdpopcornAPICoreSDK"

    const-string v4, "ExceptionPermissionList has GET_ACCOUNT"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private checkPUIDPermission()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adpopcorn/cores/d;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v2, "IgawAdpopcornAPICoreSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPermission <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> : GRANTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v2, "IgawAdpopcornAPICoreSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPermission : <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> : DENIED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private checkWriteExternalPermission()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adpopcorn/cores/d;->h()I

    move-result v2

    iget-object v3, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v4, "IgawAdpopcornAPICoreSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exceptionPermissionList : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    and-int/lit8 v2, v2, 0x8

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v3, "IgawAdpopcornAPICoreSDK"

    const-string v4, "ExceptionPermissionList has WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private completeCampaign(ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignKey:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "auth"

    iget-object v5, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "network"

    iget-object v5, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sign"

    invoke-static {v2, v1}, Lcom/igaworks/adpopcorn/cores/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "installer"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isTestMode:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x5

    const-string v2, "https://rpi-staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeinstallcampaign"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x13

    const-string v2, "https://rpi-staging.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeexecutecampaign"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x5

    const-string v2, "https://rpi.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeinstallcampaign"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v1, 0x13

    const-string v2, "https://rpi.adpopcorn.com/ap/v3/cmm/conversion/conversionservice.svc/completeexecutecampaign"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private executeApplication(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;
    .locals 1

    sget-object v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCoreSDKInstance:Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    invoke-direct {v0, p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCoreSDKInstance:Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    :cond_0
    sget-object v0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCoreSDKInstance:Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    return-object v0
.end method

.method private getVideoLandingInfoRequest()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isTestMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0xb

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/getrewardvideodetail"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/16 v2, 0xb

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/video/videoservice.svc/getrewardvideodetail"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private joinCampaign()V
    .locals 4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isTestMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/joincampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x1

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/joincampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private openWebBrowser(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/igaworks/adpopcorn/api/APIResultModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/igaworks/adpopcorn/api/APIResultModel;-><init>(ZILjava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p4}, Lcom/igaworks/adpopcorn/api/APIResultModel;->setOfferwallJsonResult(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/api/APICallbackListener;->onGetOfferwallListResult(Lcom/igaworks/adpopcorn/api/APIResultModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showVideoRewardAdActivity(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-class v3, Lcom/igaworks/adpopcorn/activity/ApVideoAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cKey"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ptid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "averageRating"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "landscapeImageURL"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clickAction"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignDescription"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "iconImageURL"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignName"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "numberOfDownloads"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "redirectURL"

    move-object/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoURL"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ADType"

    move/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AutoRedirect"

    move/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromVideoAPI"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rewardName"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromClickAPI"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skipAllowSeconds"

    move/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoImpressionURL"

    move-object/from16 v0, p17

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "moreClickReportURL"

    move-object/from16 v0, p18

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PartiTypeCode"

    iget v3, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "campaignCondition"

    move-object/from16 v0, p19

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public clickCampaign(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignKey:Ljava/lang/String;

    iput v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->userStatus:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isInstallSuccess:Z

    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->offerwallCampaignModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v2, v0, :cond_0

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    const/16 v0, 0x6f

    const-string v2, "Invalid campaign list. Please refresh campaign list."

    invoke-virtual {p0, v1, v0, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->offerwallCampaignModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->offerwallCampaignModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/model/d;

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->i()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->partiType:I

    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {v0, p1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_3
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->selectedCampaign:Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/16 v1, 0x6e

    const-string v2, "Upcoming or closed Campaign"

    invoke-virtual {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnClickCallback(ZILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "auth"

    iget-object v2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->campaignAuth:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->isTestMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x2

    const-string v3, "https://rpi-staging.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/checkcampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v2, 0x2

    const-string v3, "https://rpi.adpopcorn.com/ap/v3/sdk/media/MediaService.svc/checkcampaign"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public getOfferwallCampaignList(Landroid/content/Context;Lcom/igaworks/adpopcorn/api/APICallbackListener;)V
    .locals 6

    :try_start_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkGetAccountPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkWriteExternalPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->checkPUIDPermission()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x67

    const-string v2, "No required permission"

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->sendOnGetOfferwallListCallback(ZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {v0, p1}, Lcom/igaworks/adpopcorn/cores/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->controller:Lcom/igaworks/adpopcorn/cores/c/a;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/c/a;->a(ZLandroid/content/Context;ILjava/lang/String;Lcom/igaworks/adpopcorn/cores/c/a$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public impressionOfferwall(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->context:Landroid/content/Context;

    const-string v0, "IGAW_QA"

    const-string v1, "Called Offerwall Impression using API Integration"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    const-string v1, "open_offerwall"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNetResponseListener(ILcom/igaworks/adpopcorn/cores/model/c;)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackGetCampaignList(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackCheckParticipate(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackCheckPackageName(ILcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackParticipateCampaign(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackVideoAdDetailInfoRequest(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p2}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->callbackCompleteReward(Lcom/igaworks/adpopcorn/cores/model/c;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0xb -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
.end method

.method public sendOnClickCallback(ZILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/igaworks/adpopcorn/api/APIResultModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/igaworks/adpopcorn/api/APIResultModel;-><init>(ZILjava/lang/String;)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->apiCallbackListener:Lcom/igaworks/adpopcorn/api/APICallbackListener;

    invoke-interface {v1, v0}, Lcom/igaworks/adpopcorn/api/APICallbackListener;->onClickCampaignResult(Lcom/igaworks/adpopcorn/api/APIResultModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showCSPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/content/Context;)Lcom/igaworks/adpopcorn/cores/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/adpopcorn/cores/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
