.class public Lcom/google/android/gms/internal/zzacf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzaFu:Lcom/google/android/gms/internal/zzach;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzacg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzacg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzach;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacf;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacf;->zzaFu:Lcom/google/android/gms/internal/zzach;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzach;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacf;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacf;->zzaFu:Lcom/google/android/gms/internal/zzach;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzack$zzb;)Lcom/google/android/gms/internal/zzacf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzack$zzb",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzacf;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzach;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzacf;

    check-cast p0, Lcom/google/android/gms/internal/zzach;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzacf;-><init>(Lcom/google/android/gms/internal/zzach;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzacg;->zza(Lcom/google/android/gms/internal/zzacf;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzxH()Lcom/google/android/gms/internal/zzach;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacf;->zzaFu:Lcom/google/android/gms/internal/zzach;

    return-object v0
.end method

.method public zzxI()Lcom/google/android/gms/internal/zzack$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzack$zzb",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacf;->zzaFu:Lcom/google/android/gms/internal/zzach;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacf;->zzaFu:Lcom/google/android/gms/internal/zzach;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
