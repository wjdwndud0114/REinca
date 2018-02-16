.class public Lcom/google/android/gms/internal/zzaiu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaiu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaLH:Lcom/google/android/gms/drive/zzc;

.field final zzaMF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaiv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/zzc;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaiu;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaiu;->zzaLH:Lcom/google/android/gms/drive/zzc;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaiu;->zzaMF:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaiv;->zza(Lcom/google/android/gms/internal/zzaiu;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAo()Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiu;->zzaLH:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method

.method public zzAp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaiu;->zzaMF:Z

    return v0
.end method
