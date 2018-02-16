.class public Lcom/google/android/gms/plus/internal/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/plus/internal/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaht:Ljava/lang/String;

.field private final zzauv:Ljava/lang/String;

.field private final zzbAa:[Ljava/lang/String;

.field private final zzbAb:[Ljava/lang/String;

.field private final zzbAc:Ljava/lang/String;

.field private final zzbAd:Ljava/lang/String;

.field private final zzbAe:Ljava/lang/String;

.field private final zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final zzbzZ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/plus/internal/zzh;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget v1, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v2, p1, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/plus/internal/zzh;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzaht:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "extra"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzi;->zza(Lcom/google/android/gms/plus/internal/zzh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAc:Ljava/lang/String;

    return-object v0
.end method

.method public zzNB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAd:Ljava/lang/String;

    return-object v0
.end method

.method public zzNC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAe:Ljava/lang/String;

    return-object v0
.end method

.method public zzND()Lcom/google/android/gms/plus/internal/PlusCommonExtras;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    return-object v0
.end method

.method public zzNE()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAf:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->zzO(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public zzNx()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbzZ:[Ljava/lang/String;

    return-object v0
.end method

.method public zzNy()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAa:[Ljava/lang/String;

    return-object v0
.end method

.method public zzNz()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzbAb:[Ljava/lang/String;

    return-object v0
.end method

.method public zztS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzh;->zzauv:Ljava/lang/String;

    return-object v0
.end method
