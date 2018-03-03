.class public Lcom/google/android/gms/games/stats/PlayerStatsEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/stats/PlayerStatsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzbfa:F

.field private final zzbfb:F

.field private final zzbfc:I

.field private final zzbfd:I

.field private final zzbfe:I

.field private final zzbff:F

.field private final zzbfg:F

.field private final zzbfh:Landroid/os/Bundle;

.field private final zzbfi:F

.field private final zzbfj:F

.field private final zzbfk:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IFFIIIFFLandroid/os/Bundle;FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfa:F

    iput p3, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfb:F

    iput p4, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfc:I

    iput p5, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfd:I

    iput p6, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfe:I

    iput p7, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbff:F

    iput p8, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfg:F

    iput-object p9, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfh:Landroid/os/Bundle;

    iput p10, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfi:F

    iput p11, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfj:F

    iput p12, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfk:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/stats/PlayerStats;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfa:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfb:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfc:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfd:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfe:I

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbff:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfg:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfi:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfj:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfk:F

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->zzFO()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfh:Landroid/os/Bundle;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/stats/PlayerStats;)I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/stats/PlayerStats;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "AverageSessionLength"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getAverageSessionLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ChurnProbability"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getChurnProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DaysSinceLastPlayed"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getDaysSinceLastPlayed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NumberOfPurchases"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfPurchases()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NumberOfSessions"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getNumberOfSessions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SessionPercentile"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSessionPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SpendPercentile"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendPercentile()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SpendProbability"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getSpendProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "HighSpenderProbability"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getHighSpenderProbability()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TotalSpendNext28Days"

    invoke-interface {p0}, Lcom/google/android/gms/games/stats/PlayerStats;->getTotalSpendNext28Days()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzFP()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getAverageSessionLength()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfa:F

    return v0
.end method

.method public getChurnProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfb:F

    return v0
.end method

.method public getDaysSinceLastPlayed()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfc:I

    return v0
.end method

.method public getHighSpenderProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfj:F

    return v0
.end method

.method public getNumberOfPurchases()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfd:I

    return v0
.end method

.method public getNumberOfSessions()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfe:I

    return v0
.end method

.method public getSessionPercentile()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbff:F

    return v0
.end method

.method public getSpendPercentile()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfg:F

    return v0
.end method

.method public getSpendProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfi:F

    return v0
.end method

.method public getTotalSpendNext28Days()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfk:F

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;->zza(Lcom/google/android/gms/games/stats/PlayerStatsEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFO()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzbfh:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzFP()Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 0

    return-object p0
.end method
