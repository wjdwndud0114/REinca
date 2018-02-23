.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateAchievementResultImpl"
.end annotation


# instance fields
.field private final zzaYb:Ljava/lang/String;

.field private final zzahq:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzib(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->zzaYb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->zzaYb:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
