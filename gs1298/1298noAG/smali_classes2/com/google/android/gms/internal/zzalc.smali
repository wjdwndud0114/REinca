.class public Lcom/google/android/gms/internal/zzalc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzalc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJF:Ljava/lang/String;

.field final zzaJT:Ljava/lang/String;

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKM:Z

.field final zzaNe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzald;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzald;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzalc;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzalc;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzalc;->zzaJT:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzalc;->zzaNe:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzalc;->zzaKM:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzalc;->zzaJF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzald;->zza(Lcom/google/android/gms/internal/zzalc;Landroid/os/Parcel;I)V

    return-void
.end method
