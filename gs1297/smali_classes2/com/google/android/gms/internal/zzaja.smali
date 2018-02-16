.class public Lcom/google/android/gms/internal/zzaja;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaja;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzaKS:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaja;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaja;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaja;->zzaKS:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaja;->zzaKS:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajb;->zza(Lcom/google/android/gms/internal/zzaja;Landroid/os/Parcel;I)V

    return-void
.end method
