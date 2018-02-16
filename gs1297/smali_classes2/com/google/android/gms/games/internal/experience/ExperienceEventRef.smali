.class public final Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/internal/experience/ExperienceEvent;


# instance fields
.field private final zzbbX:Lcom/google/android/gms/games/GameRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "external_game_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzdl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzbbX:Lcom/google/android/gms/games/GameRef;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/GameRef;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzaCm:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzbbX:Lcom/google/android/gms/games/GameRef;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzEZ()Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    move-result-object v0

    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzbbX:Lcom/google/android/gms/games/GameRef;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "icon_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->zzdk(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "icon_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    check-cast v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzES()Ljava/lang/String;
    .locals 1

    const-string v0, "external_experience_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzET()Ljava/lang/String;
    .locals 1

    const-string v0, "display_title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzEU()Ljava/lang/String;
    .locals 1

    const-string v0, "display_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzEV()J
    .locals 2

    const-string v0, "created_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzEW()J
    .locals 2

    const-string v0, "xp_earned"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzEX()J
    .locals 2

    const-string v0, "current_xp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzEY()I
    .locals 1

    const-string v0, "newLevel"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzEZ()Lcom/google/android/gms/games/internal/experience/ExperienceEvent;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;-><init>(Lcom/google/android/gms/games/internal/experience/ExperienceEvent;)V

    return-object v0
.end method
