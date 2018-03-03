.class public Lcom/google/android/gms/internal/zzayb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzaFh:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzbCs:Lcom/google/android/gms/common/internal/zzaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzayc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzayb;-><init>(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zzaf;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zzaf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzayb;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayb;->zzaFh:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayb;->zzbCs:Lcom/google/android/gms/common/internal/zzaf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zzaf;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzayb;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zzaf;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzayc;->zza(Lcom/google/android/gms/internal/zzayb;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOp()Lcom/google/android/gms/common/internal/zzaf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayb;->zzbCs:Lcom/google/android/gms/common/internal/zzaf;

    return-object v0
.end method

.method public zzxA()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayb;->zzaFh:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method
