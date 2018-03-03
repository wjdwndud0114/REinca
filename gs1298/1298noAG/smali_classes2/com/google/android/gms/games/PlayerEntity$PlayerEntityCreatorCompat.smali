.class final Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;
.super Lcom/google/android/gms/games/PlayerEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/PlayerEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerEntityCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;->zzfs(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzfs(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .locals 29

    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->zzDa()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->zze(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->zzep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/PlayerEntityCreator;->zzfs(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-nez v1, :cond_3

    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Lcom/google/android/gms/games/PlayerEntity;

    const/16 v2, 0xe

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const-wide/16 v26, -0x1

    const/16 v28, 0x0

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/games/PlayerEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;IJZ)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2
.end method
