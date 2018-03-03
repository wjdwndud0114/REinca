.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->paymentView(Ljava/lang/String;Ljava/lang/String;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$deliveryCharge:D

.field private final synthetic val$discount:D

.field private final synthetic val$orderID:Ljava/lang/String;

.field private final synthetic val$purchaseDataJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$orderID:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$purchaseDataJsonString:Ljava/lang/String;

    iput-wide p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$discount:D

    iput-wide p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$deliveryCharge:D

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1080
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$orderID:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$purchaseDataJsonString:Ljava/lang/String;

    invoke-static {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->MakeProductsFromJsonForCommerceV2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-wide v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$discount:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$33;->val$deliveryCharge:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->paymentView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 1081
    return-void
.end method
