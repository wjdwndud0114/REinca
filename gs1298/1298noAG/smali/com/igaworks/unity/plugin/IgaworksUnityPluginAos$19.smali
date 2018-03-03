.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->purchase(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$currency:Ljava/lang/String;

.field private final synthetic val$paymentMethod:Ljava/lang/String;

.field private final synthetic val$price:D

.field private final synthetic val$productID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$productID:Ljava/lang/String;

    iput-wide p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$price:D

    iput-object p4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$currency:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$paymentMethod:Ljava/lang/String;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 903
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 904
    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$productID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 905
    iget-object v3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/igaworks/commerce/IgawCommerce$Currency;->getCurrencyByCurrencyCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$Currency;

    move-result-object v3

    .line 906
    iget-object v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$19;->val$paymentMethod:Ljava/lang/String;

    invoke-static {v4}, Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;->getMethodByMethodCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;

    move-result-object v4

    .line 903
    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Lcom/igaworks/commerce/IgawCommerce$Currency;Lcom/igaworks/commerce/IgawCommerce$IgawPaymentMethod;)V

    .line 907
    return-void
.end method
