.class public final Lcom/google/android/gms/drive/events/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKB:Lcom/google/android/gms/internal/zzafz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzafz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/zzn;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/drive/events/zzn;

    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    iget-object v1, p1, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "TransferProgressEvent[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzafz;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzo;->zza(Lcom/google/android/gms/drive/events/zzn;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAe()Lcom/google/android/gms/internal/zzafz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzn;->zzaKB:Lcom/google/android/gms/internal/zzafz;

    return-object v0
.end method
