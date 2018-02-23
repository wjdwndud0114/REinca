.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$76;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->getTrackingParameter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1900
    new-instance v3, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;

    invoke-direct {v3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;-><init>()V

    .line 1901
    .local v3, "para":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v4

    .line 1902
    .local v4, "param":Lcom/igaworks/core/RequestParameter;
    invoke-virtual {v4}, Lcom/igaworks/core/RequestParameter;->getReferralInfo_conversionKey()I

    move-result v0

    .line 1903
    .local v0, "conversion_key":I
    const/4 v5, 0x0

    .line 1904
    .local v5, "sub_conversion_key":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 1907
    invoke-virtual {v4}, Lcom/igaworks/core/RequestParameter;->getADBrixUserInfo_SubReferralKey()Ljava/lang/String;

    move-result-object v5

    .line 1912
    :cond_0
    invoke-virtual {v3, v0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->setCk(I)V

    .line 1913
    invoke-virtual {v3, v5}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->setSub_ck(Ljava/lang/String;)V

    .line 1915
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "ck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->getCk()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    .local v1, "couponKeyPair01":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    invoke-virtual {v3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->getSub_ck()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1920
    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "sub_ck"

    invoke-virtual {v3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$AdbrixTrackingParameter;->getSub_ck()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    .local v2, "couponKeyPair02":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    .end local v2    # "couponKeyPair02":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1925
    .local v6, "totalStr":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1927
    const-string v8, "IgaworksUnityPluginAOS"

    const-string v9, "OnGetTrackingParameterForUnity"

    invoke-static {v8, v9, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    return-void
.end method
