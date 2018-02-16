.class public Lcom/google/android/gms/common/internal/zzad;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/zzad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzaFf:I

.field private final zzaFg:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final zzagg:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzad;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzad;->zzagg:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzad;->zzaFf:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzad;->zzaFg:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzad;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzad;->zzagg:Landroid/accounts/Account;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzad;->zzaFf:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzae;->zza(Lcom/google/android/gms/common/internal/zzad;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzxy()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzad;->zzaFg:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method
