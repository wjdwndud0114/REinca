.class public Lcom/google/android/gms/drive/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/drive/zza;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/drive/zza;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaV(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/zza;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJd:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJe:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaJf:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzb;->zzbH(Landroid/os/Parcel;)Lcom/google/android/gms/drive/zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzb;->zzdS(I)[Lcom/google/android/gms/drive/zza;

    move-result-object v0

    return-object v0
.end method

.method public zzbH(Landroid/os/Parcel;)Lcom/google/android/gms/drive/zza;
    .locals 10

    const-wide/16 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaU(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-wide v4, v6

    move-wide v2, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaT(Landroid/os/Parcel;)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcW(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-eq v8, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/zza;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/zza;-><init>(IJJJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zzdS(I)[Lcom/google/android/gms/drive/zza;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/drive/zza;

    return-object v0
.end method
