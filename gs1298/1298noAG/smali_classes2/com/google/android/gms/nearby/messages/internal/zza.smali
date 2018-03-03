.class public Lcom/google/android/gms/nearby/messages/internal/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/BleSignal;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final zzbys:I

.field public final zzbyt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbys:I

    const/16 v0, -0x80

    if-ge v0, p3, :cond_0

    const/16 v0, 0x80

    if-ge p3, v0, :cond_0

    :goto_0
    iput p3, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbyt:I

    return-void

    :cond_0
    const/high16 p3, -0x80000000

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/BleSignal;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/BleSignal;

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbys:I

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/BleSignal;->getRssi()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbyt:I

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/BleSignal;->getTxPower()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbys:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbyt:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbys:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbyt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbys:I

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zza;->zzbyt:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BleSignal{rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", txPower="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzb;->zza(Lcom/google/android/gms/nearby/messages/internal/zza;Landroid/os/Parcel;I)V

    return-void
.end method
