.class public Lcom/google/android/gms/internal/zzaml;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaml;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaPv:I

.field final zzaPw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzamm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaml;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaml;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzaml;->zzaPv:I

    iput p3, p0, Lcom/google/android/gms/internal/zzaml;->zzaPw:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzamm;->zza(Lcom/google/android/gms/internal/zzaml;Landroid/os/Parcel;I)V

    return-void
.end method
