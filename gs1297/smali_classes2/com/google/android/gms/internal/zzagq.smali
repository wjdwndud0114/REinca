.class public Lcom/google/android/gms/internal/zzagq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzagq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaKU:Lcom/google/android/gms/drive/zzc;

.field final zzaKW:I

.field final zzaKY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzagq;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzagq;->zzaKU:Lcom/google/android/gms/drive/zzc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzagq;->zzaKY:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/internal/zzagq;->zzaKW:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzagq;-><init>(ILcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagr;->zza(Lcom/google/android/gms/internal/zzagq;Landroid/os/Parcel;I)V

    return-void
.end method
