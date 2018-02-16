.class public final Lcom/google/android/gms/drive/events/zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKh:Lcom/google/android/gms/drive/events/zze;

.field final zzaht:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/drive/events/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/zzb;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/zzb;->zzaht:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/zzb;->zzaKh:Lcom/google/android/gms/drive/events/zze;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/events/zzb;

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzb;->zzaKh:Lcom/google/android/gms/drive/events/zze;

    iget-object v3, p1, Lcom/google/android/gms/drive/events/zzb;->zzaKh:Lcom/google/android/gms/drive/events/zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzb;->zzaht:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/events/zzb;->zzaht:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzb;->zzaKh:Lcom/google/android/gms/drive/events/zze;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzb;->zzaht:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ChangesAvailableEvent [changesAvailableOptions=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/drive/events/zzb;->zzaKh:Lcom/google/android/gms/drive/events/zze;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzc;->zza(Lcom/google/android/gms/drive/events/zzb;Landroid/os/Parcel;I)V

    return-void
.end method
