.class public Lcom/google/android/gms/internal/zzagf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzagf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKN:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzagf;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzagf;->zzaKN:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzagf;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagg;->zza(Lcom/google/android/gms/internal/zzagf;Landroid/os/Parcel;I)V

    return-void
.end method
