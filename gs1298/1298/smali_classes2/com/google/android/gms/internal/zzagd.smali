.class public Lcom/google/android/gms/internal/zzagd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzagd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJF:Ljava/lang/String;

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKJ:Lcom/google/android/gms/drive/zzm;

.field final zzaKK:Z

.field final zzaKL:Ljava/lang/String;

.field final zzaKM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzage;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzage;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/zzm;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzagd;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzagd;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzagd;->zzaKJ:Lcom/google/android/gms/drive/zzm;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzagd;->zzaKK:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzagd;->zzaKL:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzagd;->zzaKM:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzagd;->zzaJF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzage;->zza(Lcom/google/android/gms/internal/zzagd;Landroid/os/Parcel;I)V

    return-void
.end method
