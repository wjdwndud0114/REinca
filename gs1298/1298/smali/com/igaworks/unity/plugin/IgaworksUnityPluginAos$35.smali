.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->share(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$purchaseDataJsonString:Ljava/lang/String;

.field private final synthetic val$sharingChennelString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;->val$sharingChennelString:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;->val$purchaseDataJsonString:Ljava/lang/String;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1105
    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;->val$sharingChennelString:Ljava/lang/String;

    invoke-static {v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannelByChannelCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    move-result-object v1

    .line 1106
    iget-object v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$35;->val$purchaseDataJsonString:Ljava/lang/String;

    invoke-static {v2}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->MakeProductFromJsonForCommerceV2(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerceProductModel;

    move-result-object v2

    .line 1104
    invoke-static {v0, v1, v2}, Lcom/igaworks/adbrix/IgawAdbrix$Commerce;->share(Landroid/content/Context;Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;Lcom/igaworks/commerce/IgawCommerceProductModel;)V

    .line 1107
    return-void
.end method
