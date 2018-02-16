.class public Lcom/google/android/gms/games/internal/ConnectionInfo;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/internal/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaYN:Ljava/lang/String;

.field private final zzaYO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->zzaYN:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->zzaYO:I

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->zza(Lcom/google/android/gms/games/internal/ConnectionInfo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzDY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->zzaYN:Ljava/lang/String;

    return-object v0
.end method

.method public zzDZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->zzaYO:I

    return v0
.end method
