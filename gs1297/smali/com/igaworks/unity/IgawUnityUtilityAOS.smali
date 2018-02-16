.class public Lcom/igaworks/unity/IgawUnityUtilityAOS;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "IgawUnityUtilityAOS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 13
    .local v1, "activity":Landroid/app/Activity;
    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 14
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "IMEI":Ljava/lang/String;
    return-object v0
.end method
