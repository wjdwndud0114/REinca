.class public Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickCampaign(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->clickCampaign(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getOfferwallCampaignList(Landroid/content/Context;Lcom/igaworks/adpopcorn/api/APICallbackListener;)V
    .locals 1

    invoke-static {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getOfferwallCampaignList(Landroid/content/Context;Lcom/igaworks/adpopcorn/api/APICallbackListener;)V

    return-void
.end method

.method public static impressionOfferwall(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->impressionOfferwall(Landroid/content/Context;)V

    return-void
.end method

.method public static showCSPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->getInstance(Landroid/content/Context;)Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/igaworks/adpopcorn/api/IgawAdpopcornAPICoreSDK;->showCSPage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
