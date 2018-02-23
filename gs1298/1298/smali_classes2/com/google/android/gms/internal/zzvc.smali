.class public final Lcom/google/android/gms/internal/zzvc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzvc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzaia:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzvd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzvc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/PasswordSpecification;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzvc;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvc;->zzaia:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzvd;->zza(Lcom/google/android/gms/internal/zzvc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqt()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc;->zzaia:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-object v0
.end method
