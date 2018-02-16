.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStatsColumns"
.end annotation


# static fields
.field public static final zzbaA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ave_session_length_minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "churn_probability"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "days_since_last_played"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "game_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_purchases"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num_sessions"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num_sessions_percentile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "player_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unknown_raw_keys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unknown_raw_values"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "spend_percentile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "spend_probability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "high_spender_probability"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "total_spend_next_28_days"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;->zzbaA:[Ljava/lang/String;

    return-void
.end method
