.class public Lcom/google/android/gms/internal/zzaie;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKS:Lcom/google/android/gms/drive/DriveId;

.field final zzaMt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaif;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaie;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaie;->zzaKS:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaie;->zzaMt:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzaie;-><init>(ILcom/google/android/gms/drive/DriveId;Z)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaif;->zza(Lcom/google/android/gms/internal/zzaie;Landroid/os/Parcel;I)V

    return-void
.end method
