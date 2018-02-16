.class public final Lcom/google/android/gms/games/internal/notification/GameNotificationRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/internal/notification/GameNotification;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Id"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "NotificationId"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Ticker"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Text"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "CoalescedText"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "isAcknowledged"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "isSilent"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFm()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "isQuiet"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->zzFn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFi()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFj()Ljava/lang/String;
    .locals 1

    const-string v0, "ticker"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFk()Ljava/lang/String;
    .locals 1

    const-string v0, "coalesced_text"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzFl()Z
    .locals 1

    const-string v0, "acknowledged"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzFm()Z
    .locals 1

    const-string v0, "alert_level"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzFn()Z
    .locals 2

    const-string v0, "alert_level"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
