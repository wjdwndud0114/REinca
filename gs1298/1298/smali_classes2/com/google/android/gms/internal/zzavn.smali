.class public final Lcom/google/android/gms/internal/zzavn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbxU:Landroid/os/ParcelUuid;

.field private final zzbxV:Landroid/os/ParcelUuid;

.field private final zzbxW:Landroid/os/ParcelUuid;

.field private final zzbxX:[B

.field private final zzbxY:[B

.field private final zzbxZ:I

.field private final zzbya:[B

.field private final zzbyb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxU:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavn;->zzbxV:Landroid/os/ParcelUuid;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavn;->zzbxW:Landroid/os/ParcelUuid;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzavn;->zzbxX:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzavn;->zzbxY:[B

    iput p7, p0, Lcom/google/android/gms/internal/zzavn;->zzbxZ:I

    iput-object p8, p0, Lcom/google/android/gms/internal/zzavn;->zzbya:[B

    iput-object p9, p0, Lcom/google/android/gms/internal/zzavn;->zzbyb:[B

    return-void
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
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/zzavn;

    iget v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxZ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxZ:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbya:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbya:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbyb:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbyb:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxW:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxW:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxX:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxY:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxY:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxU:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxU:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxV:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzavn;->zzbxV:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getManufacturerData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbya:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbyb:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxZ:I

    return v0
.end method

.method public getServiceData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxX:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxY:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxW:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxU:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavn;->zzbxV:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzavn;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbya:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbyb:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxW:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxY:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxU:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavn;->zzbxV:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavo;->zza(Lcom/google/android/gms/internal/zzavn;Landroid/os/Parcel;I)V

    return-void
.end method
