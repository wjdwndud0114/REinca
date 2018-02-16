.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$deliveryCharge:Ljava/lang/Double;

.field private final synthetic val$discount:Ljava/lang/Double;

.field private final synthetic val$orderID:Ljava/lang/String;

.field private final synthetic val$paymentMethod:Ljava/lang/String;

.field private final synthetic val$purchaseDataJsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$orderID:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$purchaseDataJsonString:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$discount:Ljava/lang/Double;

    iput-object p4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$deliveryCharge:Ljava/lang/Double;

    iput-object p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$paymentMethod:Ljava/lang/String;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 920
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$orderID:Ljava/lang/String;

    .line 921
    iget-object v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$purchaseDataJsonString:Ljava/lang/String;

    invoke-static {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->MakeProductFromJsonForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$discount:Ljava/lang/Double;

    iget-object v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$deliveryCharge:Ljava/lang/Double;

    iget-object v5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$20;->val$paymentMethod:Ljava/lang/String;

    invoke-static {v5}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v5

    .line 920
    invoke-static/range {v0 .. v5}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->purchase(Landroid/content/Context;Ljava/lang/String;Lcom/igaworks/commerce/IgawCommerceProductModel;Ljava/lang/Double;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V

    .line 923
    return-void
.end method
