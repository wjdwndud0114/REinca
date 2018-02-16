.class public Lcom/google/android/gms/drive/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJt:J

.field final zzaJu:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/zze;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/zze;->zzaJt:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/zze;->zzaJu:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzf;->zza(Lcom/google/android/gms/drive/zze;Landroid/os/Parcel;I)V

    return-void
.end method
