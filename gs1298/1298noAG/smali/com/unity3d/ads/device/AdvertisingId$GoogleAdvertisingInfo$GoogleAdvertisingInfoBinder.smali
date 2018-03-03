.class public abstract Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;
.source "AdvertisingId.java"

# interfaces
.implements Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GoogleAdvertisingInfoBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    return-void
.end method

.method public static create(Landroid/os/IBinder;)Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "localIInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;

    .end local v0    # "localIInterface":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 89
    :pswitch_0
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "str1":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v2    # "str1":Ljava/lang/String;
    :pswitch_1
    const-string v5, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 97
    .local v0, "bool1":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result v1

    .line 98
    .local v1, "bool2":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "bool1":Z
    .end local v1    # "bool2":Z
    :cond_1
    move v0, v4

    .line 96
    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
