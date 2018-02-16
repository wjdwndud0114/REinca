.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/coupon/interfaces/CouponCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$49;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/app/Dialog;Lcom/igaworks/coupon/model/ValidationResultModel;)V
    .locals 12
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "result"    # Lcom/igaworks/coupon/model/ValidationResultModel;

    .prologue
    .line 1353
    const-string v4, ""

    .local v4, "msg":Ljava/lang/String;
    const-string v5, ""

    .line 1354
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1355
    :cond_0
    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getItemName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getItemName()Ljava/lang/String;

    move-result-object v5

    .line 1357
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "Message"

    invoke-direct {v0, v8, v4}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    .local v0, "couponKeyPair01":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    new-instance v1, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "ItemKey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getItemKey()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    .local v1, "couponKeyPair02":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v1}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "ItemName"

    invoke-direct {v2, v8, v5}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    .local v2, "couponKeyPair03":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    new-instance v3, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;

    const-string v8, "Quantity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getQuantity()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    .local v3, "couponKeyPair04":Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;
    invoke-virtual {v3}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$CouponKeyPair;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1369
    .local v6, "totalStr":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1372
    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getResult()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1374
    const-string v8, "Unity"

    const-string v9, "call onSendCouponSucceedForUnity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1380
    const-string v8, "IgaworksUnityPluginAOS"

    const-string v9, "onSendCouponSucceedForUnity"

    invoke-static {v8, v9, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :goto_0
    return-void

    .line 1384
    :cond_2
    const-string v8, "Unity"

    const-string v9, "call onSendCouponFailedForUnity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v8, "IgaworksUnityPluginAOS"

    const-string v9, "onSendCouponFailedForUnity"

    invoke-virtual {p2}, Lcom/igaworks/coupon/model/ValidationResultModel;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
