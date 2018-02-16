.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# instance fields
.field private final zzbdn:I

.field private final zzbdo:I

.field private final zzbdp:Z

.field private final zzbdq:J

.field private final zzbdr:Ljava/lang/String;

.field private final zzbds:J

.field private final zzbdt:Ljava/lang/String;

.field private final zzbdu:Ljava/lang/String;

.field private final zzbdv:J

.field private final zzbdw:Ljava/lang/String;

.field private final zzbdx:Ljava/lang/String;

.field private final zzbdy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdn:I

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdo:I

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdp:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdq:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdr:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbds:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdt:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdu:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdv:J

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdw:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdx:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdy:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFC()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFD()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TimeSpan"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/TimeSpan;->zziC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Collection"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/LeaderboardCollection;->zziC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string v2, "RawPlayerScore"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string v2, "DisplayPlayerScore"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string v2, "PlayerRank"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v1

    const-string v2, "DisplayPlayerRank"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NumScores"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "TopPageNextToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "WindowPageNextToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "WindowPagePrevToken"

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzFD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0

    :cond_1
    const-string v0, "none"

    goto :goto_1

    :cond_2
    const-string v0, "none"

    goto :goto_2

    :cond_3
    const-string v0, "none"

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzFF()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    move-result-object v0

    return-object v0
.end method

.method public getCollection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdo:I

    return v0
.end method

.method public getDisplayPlayerRank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdt:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdr:Ljava/lang/String;

    return-object v0
.end method

.method public getNumScores()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdv:J

    return-wide v0
.end method

.method public getPlayerRank()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbds:J

    return-wide v0
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdu:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPlayerScore()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdq:J

    return-wide v0
.end method

.method public getTimeSpan()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdn:I

    return v0
.end method

.method public hasPlayerInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdp:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzb(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdw:Ljava/lang/String;

    return-object v0
.end method

.method public zzFD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdx:Ljava/lang/String;

    return-object v0
.end method

.method public zzFE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzbdy:Ljava/lang/String;

    return-object v0
.end method

.method public zzFF()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
    .locals 0

    return-object p0
.end method
