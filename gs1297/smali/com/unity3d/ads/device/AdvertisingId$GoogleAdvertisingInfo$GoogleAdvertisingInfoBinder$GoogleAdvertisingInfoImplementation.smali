.class Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleAdvertisingInfoImplementation"
.end annotation


# instance fields
.field private final _binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    .line 111
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getEnabled(Z)Z
    .locals 7
    .param p1, "paramBoolean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "localParcel1":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 141
    .local v2, "localParcel2":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    move v4, v0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v4, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    .local v0, "bool":Z
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    return v0

    .end local v0    # "bool":Z
    :cond_0
    move v4, v3

    .line 142
    goto :goto_0

    :cond_1
    move v0, v3

    .line 145
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getId()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "localParcel1":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "localParcel2":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/unity3d/ads/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation;->_binder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 129
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    return-object v2

    .line 129
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
