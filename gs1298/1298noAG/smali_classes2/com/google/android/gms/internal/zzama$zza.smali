.class public abstract Lcom/google/android/gms/internal/zzama$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzama;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzama$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzama;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzama;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzama;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzama$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzama$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamb$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalq$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalq$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Lcom/google/android/gms/internal/zzalq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalz$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalq$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzc(Lcom/google/android/gms/internal/zzalq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamb$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzamb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzalt$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalt;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzalt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalz$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzalz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalt$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalt;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzalt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzalu$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalu;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzalu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalz$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzalz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamb$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalt$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalt;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzalt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalz$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/zzalz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalu$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalu;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzalu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalu$zza;->zzbT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalu;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;IILcom/google/android/gms/internal/zzalu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzalm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzalm;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalm;Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzalo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzalo;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalo;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalq$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzd(Lcom/google/android/gms/internal/zzalq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalq$zza;->zzbP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zze(Lcom/google/android/gms/internal/zzalq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(ZLcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :sswitch_21
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(ILcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzamh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamh;

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamb$zza;->zzca(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamb;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzamh;Lcom/google/android/gms/internal/zzamb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaly$zza;->zzbX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaly;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaly;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalz$zza;->zzbY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Lcom/google/android/gms/internal/zzalz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(ILcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzals$zza;->zzbR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzals;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzals;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr$zza;->zzbQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalw$zza;->zzbV(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalv$zza;->zzbU(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzalt$zza;->zzbS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalt;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzama$zza;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzalt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzalx$zza;->zzbW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzalx;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzama$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzalx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzama$zza;->zzAX()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzama$zza;->zzc(Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzalo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzalo;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamc$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzamc;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzama$zza;->zza(Lcom/google/android/gms/internal/zzalo;Lcom/google/android/gms/internal/zzamc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzama$zza;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzamp;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v6}, Lcom/google/android/gms/internal/zzamp;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_9
        0x5 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_c
        0x8 -> :sswitch_f
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0xd -> :sswitch_14
        0xe -> :sswitch_15
        0xf -> :sswitch_16
        0x10 -> :sswitch_17
        0x11 -> :sswitch_18
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_32
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_1d
        0x18 -> :sswitch_1e
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_22
        0x1b -> :sswitch_23
        0x1c -> :sswitch_24
        0x1d -> :sswitch_25
        0x1e -> :sswitch_26
        0x1f -> :sswitch_27
        0x20 -> :sswitch_28
        0x21 -> :sswitch_4
        0x22 -> :sswitch_29
        0x23 -> :sswitch_5
        0x24 -> :sswitch_2a
        0x25 -> :sswitch_19
        0x26 -> :sswitch_2b
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_6
        0x29 -> :sswitch_1b
        0x2a -> :sswitch_2d
        0x2b -> :sswitch_2e
        0x2c -> :sswitch_2f
        0x2d -> :sswitch_7
        0x2e -> :sswitch_8
        0x2f -> :sswitch_20
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_21
        0x33 -> :sswitch_33
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
