.class public final Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;,
        Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaiy:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field public static final zzaiz:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# instance fields
.field final mVersionCode:I

.field final zzaiA:Ljava/lang/String;

.field final zzaiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiD:I

.field final zzaiE:I

.field private final zzaiF:[I

.field private final zzzI:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x10

    const/16 v3, 0xc

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzl(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijkmnopqrstxyz"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "ABCDEFGHJKLMNPQRSTXY"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "3456789"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzqz()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiy:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzl(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    const-string v1, "1234567890"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzqz()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiz:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiA:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiB:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiC:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiD:I

    iput p6, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiE:I

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzqy()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiF:[I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzzI:Ljava/util/Random;

    return-void
.end method

.method private zza(C)I
    .locals 1

    add-int/lit8 v0, p1, -0x20

    return v0
.end method

.method private static zzb(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [C

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput-char v4, v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method static synthetic zzc(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzb(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-le p0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzd(III)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(III)Z

    move-result v0

    return v0
.end method

.method private zzqy()[I
    .locals 8

    const/4 v2, 0x0

    const/16 v0, 0x5f

    new-array v3, v0, [I

    const/4 v0, -0x1

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_0

    aget-char v7, v5, v0

    invoke-direct {p0, v7}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zza(C)I

    move-result v7

    aput v1, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzf;->zza(Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;Landroid/os/Parcel;I)V

    return-void
.end method
