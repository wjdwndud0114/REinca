.class public final Lcom/google/android/gms/games/internal/game/GameInstanceRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameInstance;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_game_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "instance_display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ApplicationId"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SupportsRealTime"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->zzFb()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "SupportsTurnBased"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->zzFc()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PlatformType"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->zzBy()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/PlatformType;->zziC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PackageName"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PiracyCheckEnabled"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->zzFd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Installed"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->zzFe()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzBy()I
    .locals 1

    const-string v0, "platform_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzFb()Z
    .locals 1

    const-string v0, "real_time_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzFc()Z
    .locals 1

    const-string v0, "turn_based_support"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzFd()Z
    .locals 1

    const-string v0, "piracy_check"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzFe()Z
    .locals 1

    const-string v0, "installed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
