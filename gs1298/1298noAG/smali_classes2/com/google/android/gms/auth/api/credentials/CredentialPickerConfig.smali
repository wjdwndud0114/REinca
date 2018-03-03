.class public final Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Prompt;,
        Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mShowCancelButton:Z

.field final mVersionCode:I

.field private final zzaim:Z

.field private final zzain:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzaio:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZI)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaim:Z

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->mShowCancelButton:Z

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzain:Z

    if-eqz p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaio:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p5, v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzain:Z

    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaio:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)V
    .locals 6

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zzb(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zzc(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(IZZZI)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public isForNewAccount()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaio:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowAddAccountButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaim:Z

    return v0
.end method

.method public shouldShowCancelButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->mShowCancelButton:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzb;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzqw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzaio:I

    return v0
.end method
