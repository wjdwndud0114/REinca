.class public final Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/HintRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzair:[Ljava/lang/String;

.field private zzaiu:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private zzaiv:Z

.field private zzaiw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiu:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiu:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiv:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiw:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzair:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/credentials/HintRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzair:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzair:[Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzair:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one authentication method must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/HintRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;Lcom/google/android/gms/auth/api/credentials/HintRequest$1;)V

    return-object v0
.end method

.method public varargs setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzair:[Ljava/lang/String;

    return-object p0
.end method

.method public setEmailAddressIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiv:Z

    return-object p0
.end method

.method public setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
    .locals 1
    .param p1    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiu:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object p0
.end method

.method public setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzaiw:Z

    return-object p0
.end method
