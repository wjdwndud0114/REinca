.class public Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/stats/PlayerStatsEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/stats/PlayerStatsEntity;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaV(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getAverageSessionLength()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getChurnProbability()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getDaysSinceLastPlayed()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getNumberOfPurchases()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getNumberOfSessions()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getSessionPercentile()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getSpendPercentile()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzFO()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getSpendProbability()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getHighSpenderProbability()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->getTotalSpendNext28Days()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;->zzgb(Landroid/os/Parcel;)Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntityCreator;->zzjj(I)[Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzgb(Landroid/os/Parcel;)Lcom/google/android/gms/games/stats/PlayerStatsEntity;
    .locals 16

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaU(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaT(Landroid/os/Parcel;)I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzcW(I)I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v3

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v4

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v8

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v11

    goto :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v12

    goto :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v13

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-eq v14, v1, :cond_1

    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Overread allowed size end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_1
    new-instance v1, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(IFFIIIFFLandroid/os/Bundle;FFF)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method public zzjj(I)[Lcom/google/android/gms/games/stats/PlayerStatsEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    return-object v0
.end method
