.class public Lcom/google/android/gms/internal/zzags;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaJj:Lcom/google/android/gms/drive/DriveId;

.field final zzaKZ:I

.field final zzaLa:I

.field final zzaLb:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzags;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/internal/zzakb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzags;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzags;->zzaKZ:I

    iput p3, p0, Lcom/google/android/gms/internal/zzags;->zzaLa:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzags;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzags;->zzaLb:Lcom/google/android/gms/internal/zzakb;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagt;->zza(Lcom/google/android/gms/internal/zzags;Landroid/os/Parcel;I)V

    return-void
.end method
