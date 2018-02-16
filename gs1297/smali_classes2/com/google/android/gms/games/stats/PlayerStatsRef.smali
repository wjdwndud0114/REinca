.class public Lcom/google/android/gms/games/stats/PlayerStatsRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# instance fields
.field private zzbfh:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzFP()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getAverageSessionLength()F
    .locals 1

    const-string v0, "ave_session_length_minutes"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getChurnProbability()F
    .locals 1

    const-string v0, "churn_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getDaysSinceLastPlayed()I
    .locals 1

    const-string v0, "days_since_last_played"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHighSpenderProbability()F
    .locals 1

    const-string v0, "high_spender_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzdj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    const-string v0, "high_spender_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfPurchases()I
    .locals 1

    const-string v0, "num_purchases"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumberOfSessions()I
    .locals 1

    const-string v0, "num_sessions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionPercentile()F
    .locals 1

    const-string v0, "num_sessions_percentile"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getSpendPercentile()F
    .locals 1

    const-string v0, "spend_percentile"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getSpendProbability()F
    .locals 1

    const-string v0, "spend_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzdj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    const-string v0, "spend_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getTotalSpendNext28Days()F
    .locals 1

    const-string v0, "total_spend_next_28_days"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzdj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    const-string v0, "total_spend_next_28_days"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStats;

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzFO()Landroid/os/Bundle;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzbfh:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzbfh:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzbfh:Landroid/os/Bundle;

    const-string v0, "unknown_raw_keys"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unknown_raw_values"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v3

    array-length v4, v2

    if-gt v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v4, "Invalid raw arguments!"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzc;->zza(ZLjava/lang/Object;)V

    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzbfh:Landroid/os/Bundle;

    aget-object v4, v3, v1

    aget-object v5, v2, v1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzbfh:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public zzFP()Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    return-object v0
.end method
