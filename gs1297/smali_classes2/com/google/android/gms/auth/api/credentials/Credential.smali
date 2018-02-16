.class public Lcom/google/android/gms/auth/api/credentials/Credential;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY:Ljava/lang/String; = "com.google.android.gms.credentials.Credential"


# instance fields
.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final mVersionCode:I

.field private final zzGu:Ljava/lang/String;

.field private final zzaie:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaif:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaig:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaih:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaii:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaij:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzaik:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzail:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mVersionCode:I

    const-string v0, "credential identifier cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "credential identifier cannot be empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    if-nez p5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaif:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p7}, Lcom/google/android/gms/internal/zzut;->zzcs(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaij:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaik:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzail:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "password and accountType cannot both be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/auth/api/credentials/Credential;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaif:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaij:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaik:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzail:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedPassword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaik:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaif:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzGu:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaie:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaig:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaih:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaii:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zza;->zza(Lcom/google/android/gms/auth/api/credentials/Credential;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential;->zzaij:Ljava/lang/String;

    return-object v0
.end method
